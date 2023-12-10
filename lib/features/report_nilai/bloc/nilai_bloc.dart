import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nilai_event.dart';
part 'nilai_state.dart';
part 'nilai_bloc.freezed.dart';

class NilaiBloc extends Bloc<NilaiEvent, NilaiState> {
  NilaiBloc() : super(_Initial()) {
    on<NilaiEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
