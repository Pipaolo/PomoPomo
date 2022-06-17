// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_create_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskCreateFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> deltaJson) changed,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<dynamic> deltaJson)? changed,
    TResult Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> deltaJson)? changed,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Changed value) changed,
    required TResult Function(_Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Changed value)? changed,
    TResult Function(_Submitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Changed value)? changed,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCreateFormEventCopyWith<$Res> {
  factory $TaskCreateFormEventCopyWith(
          TaskCreateFormEvent value, $Res Function(TaskCreateFormEvent) then) =
      _$TaskCreateFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskCreateFormEventCopyWithImpl<$Res>
    implements $TaskCreateFormEventCopyWith<$Res> {
  _$TaskCreateFormEventCopyWithImpl(this._value, this._then);

  final TaskCreateFormEvent _value;
  // ignore: unused_field
  final $Res Function(TaskCreateFormEvent) _then;
}

/// @nodoc
abstract class _$$_ChangedCopyWith<$Res> {
  factory _$$_ChangedCopyWith(
          _$_Changed value, $Res Function(_$_Changed) then) =
      __$$_ChangedCopyWithImpl<$Res>;
  $Res call({List<dynamic> deltaJson});
}

/// @nodoc
class __$$_ChangedCopyWithImpl<$Res>
    extends _$TaskCreateFormEventCopyWithImpl<$Res>
    implements _$$_ChangedCopyWith<$Res> {
  __$$_ChangedCopyWithImpl(_$_Changed _value, $Res Function(_$_Changed) _then)
      : super(_value, (v) => _then(v as _$_Changed));

  @override
  _$_Changed get _value => super._value as _$_Changed;

  @override
  $Res call({
    Object? deltaJson = freezed,
  }) {
    return _then(_$_Changed(
      deltaJson == freezed
          ? _value._deltaJson
          : deltaJson // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_Changed implements _Changed {
  const _$_Changed(final List<dynamic> deltaJson) : _deltaJson = deltaJson;

  final List<dynamic> _deltaJson;
  @override
  List<dynamic> get deltaJson {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deltaJson);
  }

  @override
  String toString() {
    return 'TaskCreateFormEvent.changed(deltaJson: $deltaJson)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Changed &&
            const DeepCollectionEquality()
                .equals(other._deltaJson, _deltaJson));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_deltaJson));

  @JsonKey(ignore: true)
  @override
  _$$_ChangedCopyWith<_$_Changed> get copyWith =>
      __$$_ChangedCopyWithImpl<_$_Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> deltaJson) changed,
    required TResult Function() submitted,
  }) {
    return changed(deltaJson);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<dynamic> deltaJson)? changed,
    TResult Function()? submitted,
  }) {
    return changed?.call(deltaJson);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> deltaJson)? changed,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(deltaJson);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Changed value) changed,
    required TResult Function(_Submitted value) submitted,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Changed value)? changed,
    TResult Function(_Submitted value)? submitted,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Changed value)? changed,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class _Changed implements TaskCreateFormEvent {
  const factory _Changed(final List<dynamic> deltaJson) = _$_Changed;

  List<dynamic> get deltaJson => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ChangedCopyWith<_$_Changed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmittedCopyWith<$Res> {
  factory _$$_SubmittedCopyWith(
          _$_Submitted value, $Res Function(_$_Submitted) then) =
      __$$_SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmittedCopyWithImpl<$Res>
    extends _$TaskCreateFormEventCopyWithImpl<$Res>
    implements _$$_SubmittedCopyWith<$Res> {
  __$$_SubmittedCopyWithImpl(
      _$_Submitted _value, $Res Function(_$_Submitted) _then)
      : super(_value, (v) => _then(v as _$_Submitted));

  @override
  _$_Submitted get _value => super._value as _$_Submitted;
}

/// @nodoc

class _$_Submitted implements _Submitted {
  const _$_Submitted();

  @override
  String toString() {
    return 'TaskCreateFormEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> deltaJson) changed,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<dynamic> deltaJson)? changed,
    TResult Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> deltaJson)? changed,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Changed value) changed,
    required TResult Function(_Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Changed value)? changed,
    TResult Function(_Submitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Changed value)? changed,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements TaskCreateFormEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
mixin _$TaskCreateFormState {
  FormGroup get form => throw _privateConstructorUsedError;
  TaskCreateFormStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCreateFormStateCopyWith<TaskCreateFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCreateFormStateCopyWith<$Res> {
  factory $TaskCreateFormStateCopyWith(
          TaskCreateFormState value, $Res Function(TaskCreateFormState) then) =
      _$TaskCreateFormStateCopyWithImpl<$Res>;
  $Res call({FormGroup form, TaskCreateFormStatus status});
}

/// @nodoc
class _$TaskCreateFormStateCopyWithImpl<$Res>
    implements $TaskCreateFormStateCopyWith<$Res> {
  _$TaskCreateFormStateCopyWithImpl(this._value, this._then);

  final TaskCreateFormState _value;
  // ignore: unused_field
  final $Res Function(TaskCreateFormState) _then;

  @override
  $Res call({
    Object? form = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as FormGroup,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskCreateFormStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_TaskCreateFormCopyWith<$Res>
    implements $TaskCreateFormStateCopyWith<$Res> {
  factory _$$_TaskCreateFormCopyWith(
          _$_TaskCreateForm value, $Res Function(_$_TaskCreateForm) then) =
      __$$_TaskCreateFormCopyWithImpl<$Res>;
  @override
  $Res call({FormGroup form, TaskCreateFormStatus status});
}

/// @nodoc
class __$$_TaskCreateFormCopyWithImpl<$Res>
    extends _$TaskCreateFormStateCopyWithImpl<$Res>
    implements _$$_TaskCreateFormCopyWith<$Res> {
  __$$_TaskCreateFormCopyWithImpl(
      _$_TaskCreateForm _value, $Res Function(_$_TaskCreateForm) _then)
      : super(_value, (v) => _then(v as _$_TaskCreateForm));

  @override
  _$_TaskCreateForm get _value => super._value as _$_TaskCreateForm;

  @override
  $Res call({
    Object? form = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_TaskCreateForm(
      form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as FormGroup,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskCreateFormStatus,
    ));
  }
}

/// @nodoc

class _$_TaskCreateForm implements _TaskCreateForm {
  _$_TaskCreateForm(this.form, {this.status = TaskCreateFormStatus.initial});

  @override
  final FormGroup form;
  @override
  @JsonKey()
  final TaskCreateFormStatus status;

  @override
  String toString() {
    return 'TaskCreateFormState(form: $form, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskCreateForm &&
            const DeepCollectionEquality().equals(other.form, form) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(form),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_TaskCreateFormCopyWith<_$_TaskCreateForm> get copyWith =>
      __$$_TaskCreateFormCopyWithImpl<_$_TaskCreateForm>(this, _$identity);
}

abstract class _TaskCreateForm implements TaskCreateFormState {
  factory _TaskCreateForm(final FormGroup form,
      {final TaskCreateFormStatus status}) = _$_TaskCreateForm;

  @override
  FormGroup get form => throw _privateConstructorUsedError;
  @override
  TaskCreateFormStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TaskCreateFormCopyWith<_$_TaskCreateForm> get copyWith =>
      throw _privateConstructorUsedError;
}
