import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pelajaran.freezed.dart';
part 'pelajaran.g.dart';

@freezed
abstract class Pelajaran with _$Pelajaran {
  factory Pelajaran({
    int? id,
    required String guru,
    required String mapel,
  }) = _Pelajaran;
  factory Pelajaran.fromJson(Map<String, dynamic> json) =>
      _$PelajaranFromJson(json);
}
