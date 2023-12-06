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
    int? currentIndex = (event as AddAnswer).u;
    // tampung datd dulu, kalo  sebelumnya sudah terisi lalu user  edit o0psi
    // yaudah edit dulu baru masukkin ke state
    List<Map<String, dynamic>> data = [];
    List<List<int?>> updatedSelectedOptions = List.from(state.selectedOptions);
    while (updatedSelectedOptions.length <= currentIndex) {
      updatedSelectedOptions.add([]);
    }

    updatedSelectedOptions[currentIndex] = [index];

    emit(state.copyWith(
      selectedOptions: updatedSelectedOptions,
      currentQuestionIndex: currentIndex,
    ));
    log(state.selectedOptions.toString());
  }

  Future<void> _onLoad(UjianEvent event, Emitter<UjianState> emit) async {
    final int newQuestionIndex = (event as onLoad).cur;
    // emit(state.copyWith(currentQuestionIndex: newQuestionIndex));
    // List<Map<String, dynamic>> updatedAnswersList =
    //     List.from(state.answersList);
    // updatedAnswersList.add({
    //   'indexJawaban': null, // Isi dengan nilai jawaban yang sesuai
    //   'pertanyaanIndex': newQuestionIndex,
    // });

    // emit(state.copyWith(
    //   currentQuestionIndex: newQuestionIndex,
    //   answersList: updatedAnswersList,
    // ));
  }
}
