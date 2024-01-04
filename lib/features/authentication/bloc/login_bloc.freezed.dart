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
    required TResult Function() started,
    required TResult Function(String email) emailChange,
    required TResult Function(String password) passwordChange,
    required TResult Function() submit,
    required TResult Function() hidePassword,
    required TResult Function() getUserData,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChange,
    TResult? Function(String password)? passwordChange,
    TResult? Function()? submit,
    TResult? Function()? hidePassword,
    TResult? Function()? getUserData,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChange,
    TResult Function(String password)? passwordChange,
    TResult Function()? submit,
    TResult Function()? hidePassword,
    TResult Function()? getUserData,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(EmailChanged value) emailChange,
    required TResult Function(PasswordChanged value) passwordChange,
    required TResult Function(LoginSubmit value) submit,
    required TResult Function(HiddenPassword value) hidePassword,
    required TResult Function(GetUserData value) getUserData,
    required TResult Function(Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(EmailChanged value)? emailChange,
    TResult? Function(PasswordChanged value)? passwordChange,
    TResult? Function(LoginSubmit value)? submit,
    TResult? Function(HiddenPassword value)? hidePassword,
    TResult? Function(GetUserData value)? getUserData,
    TResult? Function(Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(EmailChanged value)? emailChange,
    TResult Function(PasswordChanged value)? passwordChange,
    TResult Function(LoginSubmit value)? submit,
    TResult Function(HiddenPassword value)? hidePassword,
    TResult Function(GetUserData value)? getUserData,
    TResult Function(Logout value)? logout,
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
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'LoginEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChange,
    required TResult Function(String password) passwordChange,
    required TResult Function() submit,
    required TResult Function() hidePassword,
    required TResult Function() getUserData,
    required TResult Function() logout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChange,
    TResult? Function(String password)? passwordChange,
    TResult? Function()? submit,
    TResult? Function()? hidePassword,
    TResult? Function()? getUserData,
    TResult? Function()? logout,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChange,
    TResult Function(String password)? passwordChange,
    TResult Function()? submit,
    TResult Function()? hidePassword,
    TResult Function()? getUserData,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(EmailChanged value) emailChange,
    required TResult Function(PasswordChanged value) passwordChange,
    required TResult Function(LoginSubmit value) submit,
    required TResult Function(HiddenPassword value) hidePassword,
    required TResult Function(GetUserData value) getUserData,
    required TResult Function(Logout value) logout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(EmailChanged value)? emailChange,
    TResult? Function(PasswordChanged value)? passwordChange,
    TResult? Function(LoginSubmit value)? submit,
    TResult? Function(HiddenPassword value)? hidePassword,
    TResult? Function(GetUserData value)? getUserData,
    TResult? Function(Logout value)? logout,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(EmailChanged value)? emailChange,
    TResult Function(PasswordChanged value)? passwordChange,
    TResult Function(LoginSubmit value)? submit,
    TResult Function(HiddenPassword value)? hidePassword,
    TResult Function(GetUserData value)? getUserData,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LoginEvent {
  const factory _Started() = _$StartedImpl;
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
    return 'LoginEvent.emailChange(email: $email)';
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
    required TResult Function() started,
    required TResult Function(String email) emailChange,
    required TResult Function(String password) passwordChange,
    required TResult Function() submit,
    required TResult Function() hidePassword,
    required TResult Function() getUserData,
    required TResult Function() logout,
  }) {
    return emailChange(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChange,
    TResult? Function(String password)? passwordChange,
    TResult? Function()? submit,
    TResult? Function()? hidePassword,
    TResult? Function()? getUserData,
    TResult? Function()? logout,
  }) {
    return emailChange?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChange,
    TResult Function(String password)? passwordChange,
    TResult Function()? submit,
    TResult Function()? hidePassword,
    TResult Function()? getUserData,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (emailChange != null) {
      return emailChange(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(EmailChanged value) emailChange,
    required TResult Function(PasswordChanged value) passwordChange,
    required TResult Function(LoginSubmit value) submit,
    required TResult Function(HiddenPassword value) hidePassword,
    required TResult Function(GetUserData value) getUserData,
    required TResult Function(Logout value) logout,
  }) {
    return emailChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(EmailChanged value)? emailChange,
    TResult? Function(PasswordChanged value)? passwordChange,
    TResult? Function(LoginSubmit value)? submit,
    TResult? Function(HiddenPassword value)? hidePassword,
    TResult? Function(GetUserData value)? getUserData,
    TResult? Function(Logout value)? logout,
  }) {
    return emailChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(EmailChanged value)? emailChange,
    TResult Function(PasswordChanged value)? passwordChange,
    TResult Function(LoginSubmit value)? submit,
    TResult Function(HiddenPassword value)? hidePassword,
    TResult Function(GetUserData value)? getUserData,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (emailChange != null) {
      return emailChange(this);
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
    return 'LoginEvent.passwordChange(password: $password)';
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
    required TResult Function() started,
    required TResult Function(String email) emailChange,
    required TResult Function(String password) passwordChange,
    required TResult Function() submit,
    required TResult Function() hidePassword,
    required TResult Function() getUserData,
    required TResult Function() logout,
  }) {
    return passwordChange(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChange,
    TResult? Function(String password)? passwordChange,
    TResult? Function()? submit,
    TResult? Function()? hidePassword,
    TResult? Function()? getUserData,
    TResult? Function()? logout,
  }) {
    return passwordChange?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChange,
    TResult Function(String password)? passwordChange,
    TResult Function()? submit,
    TResult Function()? hidePassword,
    TResult Function()? getUserData,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (passwordChange != null) {
      return passwordChange(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(EmailChanged value) emailChange,
    required TResult Function(PasswordChanged value) passwordChange,
    required TResult Function(LoginSubmit value) submit,
    required TResult Function(HiddenPassword value) hidePassword,
    required TResult Function(GetUserData value) getUserData,
    required TResult Function(Logout value) logout,
  }) {
    return passwordChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(EmailChanged value)? emailChange,
    TResult? Function(PasswordChanged value)? passwordChange,
    TResult? Function(LoginSubmit value)? submit,
    TResult? Function(HiddenPassword value)? hidePassword,
    TResult? Function(GetUserData value)? getUserData,
    TResult? Function(Logout value)? logout,
  }) {
    return passwordChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(EmailChanged value)? emailChange,
    TResult Function(PasswordChanged value)? passwordChange,
    TResult Function(LoginSubmit value)? submit,
    TResult Function(HiddenPassword value)? hidePassword,
    TResult Function(GetUserData value)? getUserData,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (passwordChange != null) {
      return passwordChange(this);
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
abstract class _$$LoginSubmitImplCopyWith<$Res> {
  factory _$$LoginSubmitImplCopyWith(
          _$LoginSubmitImpl value, $Res Function(_$LoginSubmitImpl) then) =
      __$$LoginSubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSubmitImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginSubmitImpl>
    implements _$$LoginSubmitImplCopyWith<$Res> {
  __$$LoginSubmitImplCopyWithImpl(
      _$LoginSubmitImpl _value, $Res Function(_$LoginSubmitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginSubmitImpl implements LoginSubmit {
  const _$LoginSubmitImpl();

  @override
  String toString() {
    return 'LoginEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginSubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChange,
    required TResult Function(String password) passwordChange,
    required TResult Function() submit,
    required TResult Function() hidePassword,
    required TResult Function() getUserData,
    required TResult Function() logout,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChange,
    TResult? Function(String password)? passwordChange,
    TResult? Function()? submit,
    TResult? Function()? hidePassword,
    TResult? Function()? getUserData,
    TResult? Function()? logout,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChange,
    TResult Function(String password)? passwordChange,
    TResult Function()? submit,
    TResult Function()? hidePassword,
    TResult Function()? getUserData,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(EmailChanged value) emailChange,
    required TResult Function(PasswordChanged value) passwordChange,
    required TResult Function(LoginSubmit value) submit,
    required TResult Function(HiddenPassword value) hidePassword,
    required TResult Function(GetUserData value) getUserData,
    required TResult Function(Logout value) logout,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(EmailChanged value)? emailChange,
    TResult? Function(PasswordChanged value)? passwordChange,
    TResult? Function(LoginSubmit value)? submit,
    TResult? Function(HiddenPassword value)? hidePassword,
    TResult? Function(GetUserData value)? getUserData,
    TResult? Function(Logout value)? logout,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(EmailChanged value)? emailChange,
    TResult Function(PasswordChanged value)? passwordChange,
    TResult Function(LoginSubmit value)? submit,
    TResult Function(HiddenPassword value)? hidePassword,
    TResult Function(GetUserData value)? getUserData,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class LoginSubmit implements LoginEvent {
  const factory LoginSubmit() = _$LoginSubmitImpl;
}

/// @nodoc
abstract class _$$HiddenPasswordImplCopyWith<$Res> {
  factory _$$HiddenPasswordImplCopyWith(_$HiddenPasswordImpl value,
          $Res Function(_$HiddenPasswordImpl) then) =
      __$$HiddenPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HiddenPasswordImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$HiddenPasswordImpl>
    implements _$$HiddenPasswordImplCopyWith<$Res> {
  __$$HiddenPasswordImplCopyWithImpl(
      _$HiddenPasswordImpl _value, $Res Function(_$HiddenPasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HiddenPasswordImpl implements HiddenPassword {
  const _$HiddenPasswordImpl();

  @override
  String toString() {
    return 'LoginEvent.hidePassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HiddenPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChange,
    required TResult Function(String password) passwordChange,
    required TResult Function() submit,
    required TResult Function() hidePassword,
    required TResult Function() getUserData,
    required TResult Function() logout,
  }) {
    return hidePassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChange,
    TResult? Function(String password)? passwordChange,
    TResult? Function()? submit,
    TResult? Function()? hidePassword,
    TResult? Function()? getUserData,
    TResult? Function()? logout,
  }) {
    return hidePassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChange,
    TResult Function(String password)? passwordChange,
    TResult Function()? submit,
    TResult Function()? hidePassword,
    TResult Function()? getUserData,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (hidePassword != null) {
      return hidePassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(EmailChanged value) emailChange,
    required TResult Function(PasswordChanged value) passwordChange,
    required TResult Function(LoginSubmit value) submit,
    required TResult Function(HiddenPassword value) hidePassword,
    required TResult Function(GetUserData value) getUserData,
    required TResult Function(Logout value) logout,
  }) {
    return hidePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(EmailChanged value)? emailChange,
    TResult? Function(PasswordChanged value)? passwordChange,
    TResult? Function(LoginSubmit value)? submit,
    TResult? Function(HiddenPassword value)? hidePassword,
    TResult? Function(GetUserData value)? getUserData,
    TResult? Function(Logout value)? logout,
  }) {
    return hidePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(EmailChanged value)? emailChange,
    TResult Function(PasswordChanged value)? passwordChange,
    TResult Function(LoginSubmit value)? submit,
    TResult Function(HiddenPassword value)? hidePassword,
    TResult Function(GetUserData value)? getUserData,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (hidePassword != null) {
      return hidePassword(this);
    }
    return orElse();
  }
}

abstract class HiddenPassword implements LoginEvent {
  const factory HiddenPassword() = _$HiddenPasswordImpl;
}

/// @nodoc
abstract class _$$GetUserDataImplCopyWith<$Res> {
  factory _$$GetUserDataImplCopyWith(
          _$GetUserDataImpl value, $Res Function(_$GetUserDataImpl) then) =
      __$$GetUserDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserDataImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$GetUserDataImpl>
    implements _$$GetUserDataImplCopyWith<$Res> {
  __$$GetUserDataImplCopyWithImpl(
      _$GetUserDataImpl _value, $Res Function(_$GetUserDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserDataImpl implements GetUserData {
  const _$GetUserDataImpl();

  @override
  String toString() {
    return 'LoginEvent.getUserData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChange,
    required TResult Function(String password) passwordChange,
    required TResult Function() submit,
    required TResult Function() hidePassword,
    required TResult Function() getUserData,
    required TResult Function() logout,
  }) {
    return getUserData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChange,
    TResult? Function(String password)? passwordChange,
    TResult? Function()? submit,
    TResult? Function()? hidePassword,
    TResult? Function()? getUserData,
    TResult? Function()? logout,
  }) {
    return getUserData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChange,
    TResult Function(String password)? passwordChange,
    TResult Function()? submit,
    TResult Function()? hidePassword,
    TResult Function()? getUserData,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(EmailChanged value) emailChange,
    required TResult Function(PasswordChanged value) passwordChange,
    required TResult Function(LoginSubmit value) submit,
    required TResult Function(HiddenPassword value) hidePassword,
    required TResult Function(GetUserData value) getUserData,
    required TResult Function(Logout value) logout,
  }) {
    return getUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(EmailChanged value)? emailChange,
    TResult? Function(PasswordChanged value)? passwordChange,
    TResult? Function(LoginSubmit value)? submit,
    TResult? Function(HiddenPassword value)? hidePassword,
    TResult? Function(GetUserData value)? getUserData,
    TResult? Function(Logout value)? logout,
  }) {
    return getUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(EmailChanged value)? emailChange,
    TResult Function(PasswordChanged value)? passwordChange,
    TResult Function(LoginSubmit value)? submit,
    TResult Function(HiddenPassword value)? hidePassword,
    TResult Function(GetUserData value)? getUserData,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData(this);
    }
    return orElse();
  }
}

abstract class GetUserData implements LoginEvent {
  const factory GetUserData() = _$GetUserDataImpl;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl implements Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'LoginEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChange,
    required TResult Function(String password) passwordChange,
    required TResult Function() submit,
    required TResult Function() hidePassword,
    required TResult Function() getUserData,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChange,
    TResult? Function(String password)? passwordChange,
    TResult? Function()? submit,
    TResult? Function()? hidePassword,
    TResult? Function()? getUserData,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChange,
    TResult Function(String password)? passwordChange,
    TResult Function()? submit,
    TResult Function()? hidePassword,
    TResult Function()? getUserData,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(EmailChanged value) emailChange,
    required TResult Function(PasswordChanged value) passwordChange,
    required TResult Function(LoginSubmit value) submit,
    required TResult Function(HiddenPassword value) hidePassword,
    required TResult Function(GetUserData value) getUserData,
    required TResult Function(Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(EmailChanged value)? emailChange,
    TResult? Function(PasswordChanged value)? passwordChange,
    TResult? Function(LoginSubmit value)? submit,
    TResult? Function(HiddenPassword value)? hidePassword,
    TResult? Function(GetUserData value)? getUserData,
    TResult? Function(Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(EmailChanged value)? emailChange,
    TResult Function(PasswordChanged value)? passwordChange,
    TResult Function(LoginSubmit value)? submit,
    TResult Function(HiddenPassword value)? hidePassword,
    TResult Function(GetUserData value)? getUserData,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements LoginEvent {
  const factory Logout() = _$LogoutImpl;
}

/// @nodoc
mixin _$LoginState {
  FormzStatus get status => throw _privateConstructorUsedError;
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  String get errorMessages => throw _privateConstructorUsedError;
  bool get hidePassword => throw _privateConstructorUsedError;
  FetchStatus get onLogoutProses => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FormzStatus status,
            Email email,
            Password password,
            String errorMessages,
            bool hidePassword,
            FetchStatus onLogoutProses,
            User? user)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            FormzStatus status,
            Email email,
            Password password,
            String errorMessages,
            bool hidePassword,
            FetchStatus onLogoutProses,
            User? user)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FormzStatus status,
            Email email,
            Password password,
            String errorMessages,
            bool hidePassword,
            FetchStatus onLogoutProses,
            User? user)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

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
      {FormzStatus status,
      Email email,
      Password password,
      String errorMessages,
      bool hidePassword,
      FetchStatus onLogoutProses,
      User? user});

  $UserCopyWith<$Res>? get user;
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
    Object? status = null,
    Object? email = null,
    Object? password = null,
    Object? errorMessages = null,
    Object? hidePassword = null,
    Object? onLogoutProses = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      errorMessages: null == errorMessages
          ? _value.errorMessages
          : errorMessages // ignore: cast_nullable_to_non_nullable
              as String,
      hidePassword: null == hidePassword
          ? _value.hidePassword
          : hidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      onLogoutProses: freezed == onLogoutProses
          ? _value.onLogoutProses
          : onLogoutProses // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzStatus status,
      Email email,
      Password password,
      String errorMessages,
      bool hidePassword,
      FetchStatus onLogoutProses,
      User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? email = null,
    Object? password = null,
    Object? errorMessages = null,
    Object? hidePassword = null,
    Object? onLogoutProses = freezed,
    Object? user = freezed,
  }) {
    return _then(_$InitialImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      errorMessages: null == errorMessages
          ? _value.errorMessages
          : errorMessages // ignore: cast_nullable_to_non_nullable
              as String,
      hidePassword: null == hidePassword
          ? _value.hidePassword
          : hidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      onLogoutProses: freezed == onLogoutProses
          ? _value.onLogoutProses
          : onLogoutProses // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.status,
      required this.email,
      required this.password,
      required this.errorMessages,
      required this.hidePassword,
      this.onLogoutProses = FetchStatus.initial,
      this.user});

  @override
  final FormzStatus status;
  @override
  final Email email;
  @override
  final Password password;
  @override
  final String errorMessages;
  @override
  final bool hidePassword;
  @override
  @JsonKey()
  final FetchStatus onLogoutProses;
  @override
  final User? user;

  @override
  String toString() {
    return 'LoginState.initial(status: $status, email: $email, password: $password, errorMessages: $errorMessages, hidePassword: $hidePassword, onLogoutProses: $onLogoutProses, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.errorMessages, errorMessages) ||
                other.errorMessages == errorMessages) &&
            (identical(other.hidePassword, hidePassword) ||
                other.hidePassword == hidePassword) &&
            const DeepCollectionEquality()
                .equals(other.onLogoutProses, onLogoutProses) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      email,
      password,
      errorMessages,
      hidePassword,
      const DeepCollectionEquality().hash(onLogoutProses),
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FormzStatus status,
            Email email,
            Password password,
            String errorMessages,
            bool hidePassword,
            FetchStatus onLogoutProses,
            User? user)
        initial,
  }) {
    return initial(status, email, password, errorMessages, hidePassword,
        onLogoutProses, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            FormzStatus status,
            Email email,
            Password password,
            String errorMessages,
            bool hidePassword,
            FetchStatus onLogoutProses,
            User? user)?
        initial,
  }) {
    return initial?.call(status, email, password, errorMessages, hidePassword,
        onLogoutProses, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FormzStatus status,
            Email email,
            Password password,
            String errorMessages,
            bool hidePassword,
            FetchStatus onLogoutProses,
            User? user)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, email, password, errorMessages, hidePassword,
          onLogoutProses, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial(
      {required final FormzStatus status,
      required final Email email,
      required final Password password,
      required final String errorMessages,
      required final bool hidePassword,
      final FetchStatus onLogoutProses,
      final User? user}) = _$InitialImpl;

  @override
  FormzStatus get status;
  @override
  Email get email;
  @override
  Password get password;
  @override
  String get errorMessages;
  @override
  bool get hidePassword;
  @override
  FetchStatus get onLogoutProses;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
