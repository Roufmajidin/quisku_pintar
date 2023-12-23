import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/usecases/login_usecase.dart';
import 'package:quisku_pintar/features/ujian/presentation/subpages/question_screen/data/models/question.dart';

import '../../../../../core/error/utils/status.dart';
import '../../../data/models/ujian_models.dart';
import '../../../data/usecases/getujian_usecase.dart';
import '../../subpages/question_screen/data/answer_models/annswer_model.dart';

part 'ujian_event.dart';
part 'ujian_state.dart';
part 'ujian_bloc.freezed.dart';

class UjianBloc extends Bloc<UjianEvent, UjianState> {
  final GetUjianUsecase ujianusecase;
  // get usecase login untuk nangkep user;
  final LoginUseCase loginusecase;
  UjianBloc({required this.ujianusecase, required this.loginusecase})
      : super(const _Initial()) {
    on<GetUjian>(_getUjian);
    on<GetDetailUjian>(_getDetail);
    on<onLoad>(_onLoad);
    on<AddAnswer>(_selectedAnswer);
    on<PostData>(_postData);
  }

  Future<void> _getUjian(UjianEvent event, Emitter<UjianState> emit) async {
    log('paggil ujianBLoc');
    emit(state.copyWith(fetchUjianStatus: FetchStatus.loading));
    // get userid
    final String t = await loginusecase.getLocalToken();
    final getLoged = await loginusecase.getLogedUser(t);
    // final getUser = getLoged.
    int? userId;
    getLoged.fold(
        (l) => emit(state.copyWith(fetchUjianStatus: FetchStatus.failure)),
        (r) => userId = r.id);

    final resUjian = await ujianusecase.getUjian(userId);
    resUjian.fold(
        (l) => emit(state.copyWith(fetchUjianStatus: FetchStatus.failure)),
        (r) {
      emit(state.copyWith(fetchUjianStatus: FetchStatus.success));

      emit(state.copyWith(fetchUjian: r));
    });
  }

  // TODO fungsi getdetail mapel

  // model => question
  //          enpoint detail/$id;
  Future<void> _getDetail(UjianEvent event, Emitter<UjianState> emit) async {
    log('bloc');
    emit(state.copyWith(fetchUjianStatus: FetchStatus.loading));
    int id = (event as GetDetailUjian).id;
    log('bloc $id');

    final res = await ujianusecase.getQuestion(id);
    res.fold((l) => emit(state.copyWith(fetchUjianStatus: FetchStatus.failure)),
        (r) {
      emit(state.copyWith(fetchUjianStatus: FetchStatus.success));
      emit(state.copyWith(fetchQuestion: r));
    });
  }

  Future<void> _selectedAnswer(
      UjianEvent event, Emitter<UjianState> emit) async {
    //TODO => get data index di state
    int? index = (event as AddAnswer).i;
    int? currentIndex = (event).u;
    // tampung datd dulu, kalo  sebelumnya sudah terisi lalu user  edit o0psi
    // yaudah edit dulu baru masukkin ke state
    List<List<int?>> updatedSelectedOptions = List.from(state.selectedOptions);
    while (updatedSelectedOptions.length <= currentIndex) {
      updatedSelectedOptions.add([]);
    }

    updatedSelectedOptions[currentIndex] = [index];

    emit(state.copyWith(
      selectedOptions: updatedSelectedOptions,
      currentQuestionIndex: currentIndex,
    ));

    log(updatedSelectedOptions.length.toString());
  }
  // [[0], [3], [0], [1]] => output answers user pada setiap pertanyaan
  // TODO
  //  comapare dengan models QUESTION terhadap 'key' jawabar

  Future<void> _onLoad(UjianEvent event, Emitter<UjianState> emit) async {}

  Future<void> _postData(UjianEvent event, Emitter<UjianState> emit) async {
    log('proses');
    // TODO  get user Data :)
    final mapelId = (event as PostData).mapelId;
    int idUjian = (event).id;
    final token = await loginusecase.getLocalToken();
    final user = await loginusecase.getLogedUser(token);
    int? id = 0;
    user.fold((l) => null, (r) {
      id = r.id;
    });

    log('mapel id = $mapelId .. User Id = $id');
    // TODO : tangkap data pada state :)
    List<List<int?>> updatedSelectedOptions = List.from(state.selectedOptions);

    // TODO 4: cek jawaban user comapare dengan models ujian :: where mapelId :)
    List<Question> qum = state.fetchQuestion;
    final b = calc(qum, updatedSelectedOptions);
    final userSc = b;
    final a = AnswerModels(answers: updatedSelectedOptions, nilaiAkhir: userSc);

    await ujianusecase.postJawaban(
        id: id!, mapelId: mapelId, models: a, idUjian: idUjian);
    log(' nilai A ${a.nilaiAkhir.toString()}');
    // post
    log('ini ${qum.toString()}');
    emit(state.copyWith(examFinish: 200));
  }

  // fungsi menghitung nilai :)
  //
  int calc(List<Question> q, List<List<int?>> answered) {
    int sc = 0;
    for (int i = 0; i < q.length; i++) {
      if (q[i].jawaban_benar == answered[i][0]) {
        sc++;
      }
    }
    return sc * 10;
  }
}
