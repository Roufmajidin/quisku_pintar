import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_model.freezed.dart';
part 'token_model.g.dart';

@freezed
class Token with _$Token {
  const factory Token({
    @JsonKey(name: 'refresh_token') @Default('') String refreshToken,
    @JsonKey(name: 'access_token') @Default('') String accessToken,

    //local
    @JsonKey(name: 'created_at') @Default('') String createdAt,
  }) = _Token;

  factory Token.fromJson(Map<String, Object?> json) => _$TokenFromJson(json);
}
