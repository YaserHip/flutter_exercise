// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EntityPost {
  int get id => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get imageProfile => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntityPostCopyWith<EntityPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityPostCopyWith<$Res> {
  factory $EntityPostCopyWith(
          EntityPost value, $Res Function(EntityPost) then) =
      _$EntityPostCopyWithImpl<$Res, EntityPost>;
  @useResult
  $Res call(
      {int id,
      String date,
      int userId,
      String username,
      String imageProfile,
      String type,
      String content,
      String imageUrl});
}

/// @nodoc
class _$EntityPostCopyWithImpl<$Res, $Val extends EntityPost>
    implements $EntityPostCopyWith<$Res> {
  _$EntityPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? userId = null,
    Object? username = null,
    Object? imageProfile = null,
    Object? type = null,
    Object? content = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      imageProfile: null == imageProfile
          ? _value.imageProfile
          : imageProfile // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityPostImplCopyWith<$Res>
    implements $EntityPostCopyWith<$Res> {
  factory _$$EntityPostImplCopyWith(
          _$EntityPostImpl value, $Res Function(_$EntityPostImpl) then) =
      __$$EntityPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String date,
      int userId,
      String username,
      String imageProfile,
      String type,
      String content,
      String imageUrl});
}

/// @nodoc
class __$$EntityPostImplCopyWithImpl<$Res>
    extends _$EntityPostCopyWithImpl<$Res, _$EntityPostImpl>
    implements _$$EntityPostImplCopyWith<$Res> {
  __$$EntityPostImplCopyWithImpl(
      _$EntityPostImpl _value, $Res Function(_$EntityPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? userId = null,
    Object? username = null,
    Object? imageProfile = null,
    Object? type = null,
    Object? content = null,
    Object? imageUrl = null,
  }) {
    return _then(_$EntityPostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      imageProfile: null == imageProfile
          ? _value.imageProfile
          : imageProfile // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EntityPostImpl implements _EntityPost {
  const _$EntityPostImpl(
      {required this.id,
      required this.date,
      required this.userId,
      required this.username,
      required this.imageProfile,
      required this.type,
      required this.content,
      required this.imageUrl});

  @override
  final int id;
  @override
  final String date;
  @override
  final int userId;
  @override
  final String username;
  @override
  final String imageProfile;
  @override
  final String type;
  @override
  final String content;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'EntityPost(id: $id, date: $date, userId: $userId, username: $username, imageProfile: $imageProfile, type: $type, content: $content, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityPostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.imageProfile, imageProfile) ||
                other.imageProfile == imageProfile) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, date, userId, username,
      imageProfile, type, content, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityPostImplCopyWith<_$EntityPostImpl> get copyWith =>
      __$$EntityPostImplCopyWithImpl<_$EntityPostImpl>(this, _$identity);
}

abstract class _EntityPost implements EntityPost {
  const factory _EntityPost(
      {required final int id,
      required final String date,
      required final int userId,
      required final String username,
      required final String imageProfile,
      required final String type,
      required final String content,
      required final String imageUrl}) = _$EntityPostImpl;

  @override
  int get id;
  @override
  String get date;
  @override
  int get userId;
  @override
  String get username;
  @override
  String get imageProfile;
  @override
  String get type;
  @override
  String get content;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$EntityPostImplCopyWith<_$EntityPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
