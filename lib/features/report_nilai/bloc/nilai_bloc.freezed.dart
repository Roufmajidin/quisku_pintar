// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nilai_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NilaiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int semester) getNilaiUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int semester)? getNilaiUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int semester)? getNilaiUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetNilaiReport value) getNilaiUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetNilaiReport value)? getNilaiUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetNilaiReport value)? getNilaiUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NilaiEventCopyWith<$Res> {
  factory $NilaiEventCopyWith(
          NilaiEvent value, $Res Function(NilaiEvent) then) =
      _$NilaiEventCopyWithImpl<$Res, NilaiEvent>;
}

/// @nodoc
class _$NilaiEventCopyWithImpl<$Res, $Val extends NilaiEvent>
    implements $NilaiEventCopyWith<$Res> {
  _$NilaiEventCopyWithImpl(this._value, this._then);

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
    extends _$NilaiEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'NilaiEvent.started()';
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
    required TResult Function(int semester) getNilaiUser,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int semester)? getNilaiUser,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int semester)? getNilaiUser,
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
    required TResult Function(GetNilaiReport value) getNilaiUser,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetNilaiReport value)? getNilaiUser,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetNilaiReport value)? getNilaiUser,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NilaiEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetNilaiReportImplCopyWith<$Res> {
  factory _$$GetNilaiReportImplCopyWith(_$GetNilaiReportImpl value,
          $Res Function(_$GetNilaiReportImpl) then) =
      __$$GetNilaiReportImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int semester});
}

/// @nodoc
class __$$GetNilaiReportImplCopyWithImpl<$Res>
    extends _$NilaiEventCopyWithImpl<$Res, _$GetNilaiReportImpl>
    implements _$$GetNilaiReportImplCopyWith<$Res> {
  __$$GetNilaiReportImplCopyWithImpl(
      _$GetNilaiReportImpl _value, $Res Function(_$GetNilaiReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? semester = null,
  }) {
    return _then(_$GetNilaiReportImpl(
      null == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetNilaiReportImpl implements GetNilaiReport {
  const _$GetNilaiReportImpl(this.semester);

  @override
  final int semester;

  @override
  String toString() {
    return 'NilaiEvent.getNilaiUser(semester: $semester)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNilaiReportImpl &&
            (identical(other.semester, semester) ||
                other.semester == semester));
  }

  @override
  int get hashCode => Object.hash(runtimeType, semester);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNilaiReportImplCopyWith<_$GetNilaiReportImpl> get copyWith =>
      __$$GetNilaiReportImplCopyWithImpl<_$GetNilaiReportImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int semester) getNilaiUser,
  }) {
    return getNilaiUser(semester);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int semester)? getNilaiUser,
  }) {
    return getNilaiUser?.call(semester);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int semester)? getNilaiUser,
    required TResult orElse(),
  }) {
    if (getNilaiUser != null) {
      return getNilaiUser(semester);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetNilaiReport value) getNilaiUser,
  }) {
    return getNilaiUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetNilaiReport value)? getNilaiUser,
  }) {
    return getNilaiUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetNilaiReport value)? getNilaiUser,
    required TResult orElse(),
  }) {
    if (getNilaiUser != null) {
      return getNilaiUser(this);
    }
    return orElse();
  }
}

abstract class GetNilaiReport implements NilaiEvent {
  const factory GetNilaiReport(final int semester) = _$GetNilaiReportImpl;

  int get semester;
  @JsonKey(ignore: true)
  _$$GetNilaiReportImplCopyWith<_$GetNilaiReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NilaiState {
  List<ReportModels> get reportData => throw _privateConstructorUsedError;
  List<ReportModels> get groupedPTS => throw _privateConstructorUsedError;
  List<ReportModels> get groupedPAS => throw _privateConstructorUsedError;
  FetchStatus get fetchReportStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ReportModels> reportData,
            List<ReportModels> groupedPTS,
            List<ReportModels> groupedPAS,
            FetchStatus fetchReportStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<ReportModels> reportData,
            List<ReportModels> groupedPTS,
            List<ReportModels> groupedPAS,
            FetchStatus fetchReportStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ReportModels> reportData,
            List<ReportModels> groupedPTS,
            List<ReportModels> groupedPAS,
            FetchStatus fetchReportStatus)?
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
  $NilaiStateCopyWith<NilaiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NilaiStateCopyWith<$Res> {
  factory $NilaiStateCopyWith(
          NilaiState value, $Res Function(NilaiState) then) =
      _$NilaiStateCopyWithImpl<$Res, NilaiState>;
  @useResult
  $Res call(
      {List<ReportModels> reportData,
      List<ReportModels> groupedPTS,
      List<ReportModels> groupedPAS,
      FetchStatus fetchReportStatus});
}

/// @nodoc
class _$NilaiStateCopyWithImpl<$Res, $Val extends NilaiState>
    implements $NilaiStateCopyWith<$Res> {
  _$NilaiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportData = null,
    Object? groupedPTS = null,
    Object? groupedPAS = null,
    Object? fetchReportStatus = null,
  }) {
    return _then(_value.copyWith(
      reportData: null == reportData
          ? _value.reportData
          : reportData // ignore: cast_nullable_to_non_nullable
              as List<ReportModels>,
      groupedPTS: null == groupedPTS
          ? _value.groupedPTS
          : groupedPTS // ignore: cast_nullable_to_non_nullable
              as List<ReportModels>,
      groupedPAS: null == groupedPAS
          ? _value.groupedPAS
          : groupedPAS // ignore: cast_nullable_to_non_nullable
              as List<ReportModels>,
      fetchReportStatus: null == fetchReportStatus
          ? _value.fetchReportStatus
          : fetchReportStatus // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $NilaiStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ReportModels> reportData,
      List<ReportModels> groupedPTS,
      List<ReportModels> groupedPAS,
      FetchStatus fetchReportStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NilaiStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportData = null,
    Object? groupedPTS = null,
    Object? groupedPAS = null,
    Object? fetchReportStatus = null,
  }) {
    return _then(_$InitialImpl(
      reportData: null == reportData
          ? _value._reportData
          : reportData // ignore: cast_nullable_to_non_nullable
              as List<ReportModels>,
      groupedPTS: null == groupedPTS
          ? _value._groupedPTS
          : groupedPTS // ignore: cast_nullable_to_non_nullable
              as List<ReportModels>,
      groupedPAS: null == groupedPAS
          ? _value._groupedPAS
          : groupedPAS // ignore: cast_nullable_to_non_nullable
              as List<ReportModels>,
      fetchReportStatus: null == fetchReportStatus
          ? _value.fetchReportStatus
          : fetchReportStatus // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {final List<ReportModels> reportData = const <ReportModels>[],
      final List<ReportModels> groupedPTS = const <ReportModels>[],
      final List<ReportModels> groupedPAS = const <ReportModels>[],
      this.fetchReportStatus = FetchStatus.initial})
      : _reportData = reportData,
        _groupedPTS = groupedPTS,
        _groupedPAS = groupedPAS;

  final List<ReportModels> _reportData;
  @override
  @JsonKey()
  List<ReportModels> get reportData {
    if (_reportData is EqualUnmodifiableListView) return _reportData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reportData);
  }

  final List<ReportModels> _groupedPTS;
  @override
  @JsonKey()
  List<ReportModels> get groupedPTS {
    if (_groupedPTS is EqualUnmodifiableListView) return _groupedPTS;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupedPTS);
  }

  final List<ReportModels> _groupedPAS;
  @override
  @JsonKey()
  List<ReportModels> get groupedPAS {
    if (_groupedPAS is EqualUnmodifiableListView) return _groupedPAS;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupedPAS);
  }

  @override
  @JsonKey()
  final FetchStatus fetchReportStatus;

  @override
  String toString() {
    return 'NilaiState.initial(reportData: $reportData, groupedPTS: $groupedPTS, groupedPAS: $groupedPAS, fetchReportStatus: $fetchReportStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._reportData, _reportData) &&
            const DeepCollectionEquality()
                .equals(other._groupedPTS, _groupedPTS) &&
            const DeepCollectionEquality()
                .equals(other._groupedPAS, _groupedPAS) &&
            (identical(other.fetchReportStatus, fetchReportStatus) ||
                other.fetchReportStatus == fetchReportStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_reportData),
      const DeepCollectionEquality().hash(_groupedPTS),
      const DeepCollectionEquality().hash(_groupedPAS),
      fetchReportStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ReportModels> reportData,
            List<ReportModels> groupedPTS,
            List<ReportModels> groupedPAS,
            FetchStatus fetchReportStatus)
        initial,
  }) {
    return initial(reportData, groupedPTS, groupedPAS, fetchReportStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<ReportModels> reportData,
            List<ReportModels> groupedPTS,
            List<ReportModels> groupedPAS,
            FetchStatus fetchReportStatus)?
        initial,
  }) {
    return initial?.call(reportData, groupedPTS, groupedPAS, fetchReportStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ReportModels> reportData,
            List<ReportModels> groupedPTS,
            List<ReportModels> groupedPAS,
            FetchStatus fetchReportStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(reportData, groupedPTS, groupedPAS, fetchReportStatus);
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

abstract class _Initial implements NilaiState {
  const factory _Initial(
      {final List<ReportModels> reportData,
      final List<ReportModels> groupedPTS,
      final List<ReportModels> groupedPAS,
      final FetchStatus fetchReportStatus}) = _$InitialImpl;

  @override
  List<ReportModels> get reportData;
  @override
  List<ReportModels> get groupedPTS;
  @override
  List<ReportModels> get groupedPAS;
  @override
  FetchStatus get fetchReportStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
