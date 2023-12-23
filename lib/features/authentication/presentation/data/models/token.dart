import 'package:freezed_annotation/freezed_annotation.dart';
part 'token.freezed.dart';
part 'token.g.dart';

@freezed
abstract class TokenModels with _$TokenModels {
  factory TokenModels({
    required String message,
    required String accesToken,
    required String tokenType,
  }) = _TokenModels;
  factory TokenModels.fromJson(Map<String, dynamic> json) =>
      _$TokenModelsFromJson(json);
}
