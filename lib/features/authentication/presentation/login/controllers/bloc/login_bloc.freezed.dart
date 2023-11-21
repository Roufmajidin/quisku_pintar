// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showPassword,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitLoginPressed,
    required TResult Function() loginGooglePressed,
    required TResult Function() requestEmailVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showPassword,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitLoginPressed,
    TResult? Function()? loginGooglePressed,
    TResult? Function()? requestEmailVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showPassword,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitLoginPressed,
    TResult Function()? loginGooglePressed,
    TResult Function()? requestEmailVerification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitLoginPressed value) submitLoginPressed,
    required TResult Function(LoginGooglePressed value) loginGooglePressed,
    required TResult Function(RequestEmailVerification value)
        requestEmailVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitLoginPressed value)? submitLoginPressed,
    TResult? Function(LoginGooglePressed value)? loginGooglePressed,
    TResult? Function(RequestEmailVerification value)? requestEmailVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitLoginPressed value)? submitLoginPressed,
    TResult Function(LoginGooglePressed value)? loginGooglePressed,
    TResult Function(RequestEmailVerification value)? requestEmailVerification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShowPasswordImplCopyWith<$Res> {
  factory _$$ShowPasswordImplCopyWith(
          _$ShowPasswordImpl value, $Res Function(_$ShowPasswordImpl) then) =
      __$$ShowPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowPasswordImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$ShowPasswordImpl>
    implements _$$ShowPasswordImplCopyWith<$Res> {
  __$$ShowPasswordImplCopyWithImpl(
      _$ShowPasswordImpl _value, $Res Function(_$ShowPasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowPasswordImpl implements ShowPassword {
  const _$ShowPasswordImpl();

  @override
  String toString() {
    return 'LoginEvent.showPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showPassword,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitLoginPressed,
    required TResult Function() loginGooglePressed,
    required TResult Function() requestEmailVerification,
  }) {
    return showPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showPassword,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitLoginPressed,
    TResult? Function()? loginGooglePressed,
    TResult? Function()? requestEmailVerification,
  }) {
    return showPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showPassword,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitLoginPressed,
    TResult Function()? loginGooglePressed,
    TResult Function()? requestEmailVerification,
    required TResult orElse(),
  }) {
    if (showPassword != null) {
      return showPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitLoginPressed value) submitLoginPressed,
    required TResult Function(LoginGooglePressed value) loginGooglePressed,
    required TResult Function(RequestEmailVerification value)
        requestEmailVerification,
  }) {
    return showPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitLoginPressed value)? submitLoginPressed,
    TResult? Function(LoginGooglePressed value)? loginGooglePressed,
    TResult? Function(RequestEmailVerification value)? requestEmailVerification,
  }) {
    return showPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitLoginPressed value)? submitLoginPressed,
    TResult Function(LoginGooglePressed value)? loginGooglePressed,
    TResult Function(RequestEmailVerification value)? requestEmailVerification,
    required TResult orElse(),
  }) {
    if (showPassword != null) {
      return showPassword(this);
    }
    return orElse();
  }
}

abstract class ShowPassword implements LoginEvent {
  const factory ShowPassword() = _$ShowPasswordImpl;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements EmailChanged {
  const _$EmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'LoginEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showPassword,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitLoginPressed,
    required TResult Function() loginGooglePressed,
    required TResult Function() requestEmailVerification,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showPassword,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitLoginPressed,
    TResult? Function()? loginGooglePressed,
    TResult? Function()? requestEmailVerification,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showPassword,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitLoginPressed,
    TResult Function()? loginGooglePressed,
    TResult Function()? requestEmailVerification,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitLoginPressed value) submitLoginPressed,
    required TResult Function(LoginGooglePressed value) loginGooglePressed,
    required TResult Function(RequestEmailVerification value)
        requestEmailVerification,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitLoginPressed value)? submitLoginPressed,
    TResult? Function(LoginGooglePressed value)? loginGooglePressed,
    TResult? Function(RequestEmailVerification value)? requestEmailVerification,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitLoginPressed value)? submitLoginPressed,
    TResult Function(LoginGooglePressed value)? loginGooglePressed,
    TResult Function(RequestEmailVerification value)? requestEmailVerification,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements LoginEvent {
  const factory EmailChanged(final String email) = _$EmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements PasswordChanged {
  const _$PasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showPassword,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitLoginPressed,
    required TResult Function() loginGooglePressed,
    required TResult Function() requestEmailVerification,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showPassword,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitLoginPressed,
    TResult? Function()? loginGooglePressed,
    TResult? Function()? requestEmailVerification,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showPassword,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitLoginPressed,
    TResult Function()? loginGooglePressed,
    TResult Function()? requestEmailVerification,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitLoginPressed value) submitLoginPressed,
    required TResult Function(LoginGooglePressed value) loginGooglePressed,
    required TResult Function(RequestEmailVerification value)
        requestEmailVerification,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitLoginPressed value)? submitLoginPressed,
    TResult? Function(LoginGooglePressed value)? loginGooglePressed,
    TResult? Function(RequestEmailVerification value)? requestEmailVerification,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitLoginPressed value)? submitLoginPressed,
    TResult Function(LoginGooglePressed value)? loginGooglePressed,
    TResult Function(RequestEmailVerification value)? requestEmailVerification,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements LoginEvent {
  const factory PasswordChanged(final String password) = _$PasswordChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitLoginPressedImplCopyWith<$Res> {
  factory _$$SubmitLoginPressedImplCopyWith(_$SubmitLoginPressedImpl value,
          $Res Function(_$SubmitLoginPressedImpl) then) =
      __$$SubmitLoginPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitLoginPressedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$SubmitLoginPressedImpl>
    implements _$$SubmitLoginPressedImplCopyWith<$Res> {
  __$$SubmitLoginPressedImplCopyWithImpl(_$SubmitLoginPressedImpl _value,
      $Res Function(_$SubmitLoginPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitLoginPressedImpl implements SubmitLoginPressed {
  const _$SubmitLoginPressedImpl();

  @override
  String toString() {
    return 'LoginEvent.submitLoginPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitLoginPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showPassword,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitLoginPressed,
    required TResult Function() loginGooglePressed,
    required TResult Function() requestEmailVerification,
  }) {
    return submitLoginPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showPassword,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitLoginPressed,
    TResult? Function()? loginGooglePressed,
    TResult? Function()? requestEmailVerification,
  }) {
    return submitLoginPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showPassword,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitLoginPressed,
    TResult Function()? loginGooglePressed,
    TResult Function()? requestEmailVerification,
    required TResult orElse(),
  }) {
    if (submitLoginPressed != null) {
      return submitLoginPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitLoginPressed value) submitLoginPressed,
    required TResult Function(LoginGooglePressed value) loginGooglePressed,
    required TResult Function(RequestEmailVerification value)
        requestEmailVerification,
  }) {
    return submitLoginPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitLoginPressed value)? submitLoginPressed,
    TResult? Function(LoginGooglePressed value)? loginGooglePressed,
    TResult? Function(RequestEmailVerification value)? requestEmailVerification,
  }) {
    return submitLoginPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitLoginPressed value)? submitLoginPressed,
    TResult Function(LoginGooglePressed value)? loginGooglePressed,
    TResult Function(RequestEmailVerification value)? requestEmailVerification,
    required TResult orElse(),
  }) {
    if (submitLoginPressed != null) {
      return submitLoginPressed(this);
    }
    return orElse();
  }
}

abstract class SubmitLoginPressed implements LoginEvent {
  const factory SubmitLoginPressed() = _$SubmitLoginPressedImpl;
}

/// @nodoc
abstract class _$$LoginGooglePressedImplCopyWith<$Res> {
  factory _$$LoginGooglePressedImplCopyWith(_$LoginGooglePressedImpl value,
          $Res Function(_$LoginGooglePressedImpl) then) =
      __$$LoginGooglePressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginGooglePressedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginGooglePressedImpl>
    implements _$$LoginGooglePressedImplCopyWith<$Res> {
  __$$LoginGooglePressedImplCopyWithImpl(_$LoginGooglePressedImpl _value,
      $Res Function(_$LoginGooglePressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginGooglePressedImpl implements LoginGooglePressed {
  const _$LoginGooglePressedImpl();

  @override
  String toString() {
    return 'LoginEvent.loginGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginGooglePressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showPassword,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitLoginPressed,
    required TResult Function() loginGooglePressed,
    required TResult Function() requestEmailVerification,
  }) {
    return loginGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showPassword,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitLoginPressed,
    TResult? Function()? loginGooglePressed,
    TResult? Function()? requestEmailVerification,
  }) {
    return loginGooglePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showPassword,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitLoginPressed,
    TResult Function()? loginGooglePressed,
    TResult Function()? requestEmailVerification,
    required TResult orElse(),
  }) {
    if (loginGooglePressed != null) {
      return loginGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitLoginPressed value) submitLoginPressed,
    required TResult Function(LoginGooglePressed value) loginGooglePressed,
    required TResult Function(RequestEmailVerification value)
        requestEmailVerification,
  }) {
    return loginGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitLoginPressed value)? submitLoginPressed,
    TResult? Function(LoginGooglePressed value)? loginGooglePressed,
    TResult? Function(RequestEmailVerification value)? requestEmailVerification,
  }) {
    return loginGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitLoginPressed value)? submitLoginPressed,
    TResult Function(LoginGooglePressed value)? loginGooglePressed,
    TResult Function(RequestEmailVerification value)? requestEmailVerification,
    required TResult orElse(),
  }) {
    if (loginGooglePressed != null) {
      return loginGooglePressed(this);
    }
    return orElse();
  }
}

abstract class LoginGooglePressed implements LoginEvent {
  const factory LoginGooglePressed() = _$LoginGooglePressedImpl;
}

/// @nodoc
abstract class _$$RequestEmailVerificationImplCopyWith<$Res> {
  factory _$$RequestEmailVerificationImplCopyWith(
          _$RequestEmailVerificationImpl value,
          $Res Function(_$RequestEmailVerificationImpl) then) =
      __$$RequestEmailVerificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestEmailVerificationImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$RequestEmailVerificationImpl>
    implements _$$RequestEmailVerificationImplCopyWith<$Res> {
  __$$RequestEmailVerificationImplCopyWithImpl(
      _$RequestEmailVerificationImpl _value,
      $Res Function(_$RequestEmailVerificationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestEmailVerificationImpl implements RequestEmailVerification {
  const _$RequestEmailVerificationImpl();

  @override
  String toString() {
    return 'LoginEvent.requestEmailVerification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestEmailVerificationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showPassword,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitLoginPressed,
    required TResult Function() loginGooglePressed,
    required TResult Function() requestEmailVerification,
  }) {
    return requestEmailVerification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showPassword,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitLoginPressed,
    TResult? Function()? loginGooglePressed,
    TResult? Function()? requestEmailVerification,
  }) {
    return requestEmailVerification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showPassword,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitLoginPressed,
    TResult Function()? loginGooglePressed,
    TResult Function()? requestEmailVerification,
    required TResult orElse(),
  }) {
    if (requestEmailVerification != null) {
      return requestEmailVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitLoginPressed value) submitLoginPressed,
    required TResult Function(LoginGooglePressed value) loginGooglePressed,
    required TResult Function(RequestEmailVerification value)
        requestEmailVerification,
  }) {
    return requestEmailVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitLoginPressed value)? submitLoginPressed,
    TResult? Function(LoginGooglePressed value)? loginGooglePressed,
    TResult? Function(RequestEmailVerification value)? requestEmailVerification,
  }) {
    return requestEmailVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitLoginPressed value)? submitLoginPressed,
    TResult Function(LoginGooglePressed value)? loginGooglePressed,
    TResult Function(RequestEmailVerification value)? requestEmailVerification,
    required TResult orElse(),
  }) {
    if (requestEmailVerification != null) {
      return requestEmailVerification(this);
    }
    return orElse();
  }
}

abstract class RequestEmailVerification implements LoginEvent {
  const factory RequestEmailVerification() = _$RequestEmailVerificationImpl;
}

/// @nodoc
mixin _$LoginState {
  bool get hidePassword => throw _privateConstructorUsedError;
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  FormzSubmissionStatus get loginStatus => throw _privateConstructorUsedError;
  Status get loginGoogleStatus => throw _privateConstructorUsedError;
  Status get requestEmailVerificationStatus =>
      throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {bool hidePassword,
      Email email,
      Password password,
      FormzSubmissionStatus loginStatus,
      Status loginGoogleStatus,
      Status requestEmailVerificationStatus,
      String message,
      bool isValid});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hidePassword = null,
    Object? email = null,
    Object? password = null,
    Object? loginStatus = null,
    Object? loginGoogleStatus = null,
    Object? requestEmailVerificationStatus = null,
    Object? message = null,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      hidePassword: null == hidePassword
          ? _value.hidePassword
          : hidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      loginGoogleStatus: null == loginGoogleStatus
          ? _value.loginGoogleStatus
          : loginGoogleStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      requestEmailVerificationStatus: null == requestEmailVerificationStatus
          ? _value.requestEmailVerificationStatus
          : requestEmailVerificationStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool hidePassword,
      Email email,
      Password password,
      FormzSubmissionStatus loginStatus,
      Status loginGoogleStatus,
      Status requestEmailVerificationStatus,
      String message,
      bool isValid});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hidePassword = null,
    Object? email = null,
    Object? password = null,
    Object? loginStatus = null,
    Object? loginGoogleStatus = null,
    Object? requestEmailVerificationStatus = null,
    Object? message = null,
    Object? isValid = null,
  }) {
    return _then(_$LoginStateImpl(
      hidePassword: null == hidePassword
          ? _value.hidePassword
          : hidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      loginGoogleStatus: null == loginGoogleStatus
          ? _value.loginGoogleStatus
          : loginGoogleStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      requestEmailVerificationStatus: null == requestEmailVerificationStatus
          ? _value.requestEmailVerificationStatus
          : requestEmailVerificationStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {this.hidePassword = true,
      this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.loginStatus = FormzSubmissionStatus.initial,
      this.loginGoogleStatus = Status.initial,
      this.requestEmailVerificationStatus = Status.initial,
      this.message = '',
      this.isValid = false});

  @override
  @JsonKey()
  final bool hidePassword;
  @override
  @JsonKey()
  final Email email;
  @override
  @JsonKey()
  final Password password;
  @override
  @JsonKey()
  final FormzSubmissionStatus loginStatus;
  @override
  @JsonKey()
  final Status loginGoogleStatus;
  @override
  @JsonKey()
  final Status requestEmailVerificationStatus;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'LoginState(hidePassword: $hidePassword, email: $email, password: $password, loginStatus: $loginStatus, loginGoogleStatus: $loginGoogleStatus, requestEmailVerificationStatus: $requestEmailVerificationStatus, message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.hidePassword, hidePassword) ||
                other.hidePassword == hidePassword) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus) &&
            (identical(other.loginGoogleStatus, loginGoogleStatus) ||
                other.loginGoogleStatus == loginGoogleStatus) &&
            (identical(other.requestEmailVerificationStatus,
                    requestEmailVerificationStatus) ||
                other.requestEmailVerificationStatus ==
                    requestEmailVerificationStatus) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      hidePassword,
      email,
      password,
      loginStatus,
      loginGoogleStatus,
      requestEmailVerificationStatus,
      message,
      isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final bool hidePassword,
      final Email email,
      final Password password,
      final FormzSubmissionStatus loginStatus,
      final Status loginGoogleStatus,
      final Status requestEmailVerificationStatus,
      final String message,
      final bool isValid}) = _$LoginStateImpl;

  @override
  bool get hidePassword;
  @override
  Email get email;
  @override
  Password get password;
  @override
  FormzSubmissionStatus get loginStatus;
  @override
  Status get loginGoogleStatus;
  @override
  Status get requestEmailVerificationStatus;
  @override
  String get message;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
