// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_post_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModelPostResult _$ModelPostResultFromJson(Map<String, dynamic> json) {
  return _ModelPostResult.fromJson(json);
}

/// @nodoc
mixin _$ModelPostResult {
  List<ModelPost> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelPostResultCopyWith<ModelPostResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelPostResultCopyWith<$Res> {
  factory $ModelPostResultCopyWith(
          ModelPostResult value, $Res Function(ModelPostResult) then) =
      _$ModelPostResultCopyWithImpl<$Res, ModelPostResult>;
  @useResult
  $Res call({List<ModelPost> data});
}

/// @nodoc
class _$ModelPostResultCopyWithImpl<$Res, $Val extends ModelPostResult>
    implements $ModelPostResultCopyWith<$Res> {
  _$ModelPostResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ModelPost>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelPostResultImplCopyWith<$Res>
    implements $ModelPostResultCopyWith<$Res> {
  factory _$$ModelPostResultImplCopyWith(_$ModelPostResultImpl value,
          $Res Function(_$ModelPostResultImpl) then) =
      __$$ModelPostResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ModelPost> data});
}

/// @nodoc
class __$$ModelPostResultImplCopyWithImpl<$Res>
    extends _$ModelPostResultCopyWithImpl<$Res, _$ModelPostResultImpl>
    implements _$$ModelPostResultImplCopyWith<$Res> {
  __$$ModelPostResultImplCopyWithImpl(
      _$ModelPostResultImpl _value, $Res Function(_$ModelPostResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ModelPostResultImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ModelPost>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelPostResultImpl implements _ModelPostResult {
  const _$ModelPostResultImpl({required final List<ModelPost> data})
      : _data = data;

  factory _$ModelPostResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelPostResultImplFromJson(json);

  final List<ModelPost> _data;
  @override
  List<ModelPost> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ModelPostResult(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelPostResultImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelPostResultImplCopyWith<_$ModelPostResultImpl> get copyWith =>
      __$$ModelPostResultImplCopyWithImpl<_$ModelPostResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelPostResultImplToJson(
      this,
    );
  }
}

abstract class _ModelPostResult implements ModelPostResult {
  const factory _ModelPostResult({required final List<ModelPost> data}) =
      _$ModelPostResultImpl;

  factory _ModelPostResult.fromJson(Map<String, dynamic> json) =
      _$ModelPostResultImpl.fromJson;

  @override
  List<ModelPost> get data;
  @override
  @JsonKey(ignore: true)
  _$$ModelPostResultImplCopyWith<_$ModelPostResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
