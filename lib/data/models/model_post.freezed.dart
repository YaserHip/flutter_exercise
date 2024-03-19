// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModelPost _$ModelPostFromJson(Map<String, dynamic> json) {
  return _ModelPost.fromJson(json);
}

/// @nodoc
mixin _$ModelPost {
  int get id => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_profile')
  String get imageProfile => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelPostCopyWith<ModelPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelPostCopyWith<$Res> {
  factory $ModelPostCopyWith(ModelPost value, $Res Function(ModelPost) then) =
      _$ModelPostCopyWithImpl<$Res, ModelPost>;
  @useResult
  $Res call(
      {int id,
      String date,
      @JsonKey(name: 'user_id') int userId,
      String username,
      @JsonKey(name: 'image_profile') String imageProfile,
      String type,
      String content,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class _$ModelPostCopyWithImpl<$Res, $Val extends ModelPost>
    implements $ModelPostCopyWith<$Res> {
  _$ModelPostCopyWithImpl(this._value, this._then);

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
abstract class _$$ModelPostImplCopyWith<$Res>
    implements $ModelPostCopyWith<$Res> {
  factory _$$ModelPostImplCopyWith(
          _$ModelPostImpl value, $Res Function(_$ModelPostImpl) then) =
      __$$ModelPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String date,
      @JsonKey(name: 'user_id') int userId,
      String username,
      @JsonKey(name: 'image_profile') String imageProfile,
      String type,
      String content,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class __$$ModelPostImplCopyWithImpl<$Res>
    extends _$ModelPostCopyWithImpl<$Res, _$ModelPostImpl>
    implements _$$ModelPostImplCopyWith<$Res> {
  __$$ModelPostImplCopyWithImpl(
      _$ModelPostImpl _value, $Res Function(_$ModelPostImpl) _then)
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
    return _then(_$ModelPostImpl(
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
@JsonSerializable()
class _$ModelPostImpl implements _ModelPost {
  const _$ModelPostImpl(
      {required this.id,
      required this.date,
      @JsonKey(name: 'user_id') required this.userId,
      required this.username,
      @JsonKey(name: 'image_profile') required this.imageProfile,
      required this.type,
      required this.content,
      @JsonKey(name: 'image_url') required this.imageUrl});

  factory _$ModelPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelPostImplFromJson(json);

  @override
  final int id;
  @override
  final String date;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final String username;
  @override
  @JsonKey(name: 'image_profile')
  final String imageProfile;
  @override
  final String type;
  @override
  final String content;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;

  @override
  String toString() {
    return 'ModelPost(id: $id, date: $date, userId: $userId, username: $username, imageProfile: $imageProfile, type: $type, content: $content, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelPostImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, date, userId, username,
      imageProfile, type, content, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelPostImplCopyWith<_$ModelPostImpl> get copyWith =>
      __$$ModelPostImplCopyWithImpl<_$ModelPostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelPostImplToJson(
      this,
    );
  }
}

abstract class _ModelPost implements ModelPost {
  const factory _ModelPost(
          {required final int id,
          required final String date,
          @JsonKey(name: 'user_id') required final int userId,
          required final String username,
          @JsonKey(name: 'image_profile') required final String imageProfile,
          required final String type,
          required final String content,
          @JsonKey(name: 'image_url') required final String imageUrl}) =
      _$ModelPostImpl;

  factory _ModelPost.fromJson(Map<String, dynamic> json) =
      _$ModelPostImpl.fromJson;

  @override
  int get id;
  @override
  String get date;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  String get username;
  @override
  @JsonKey(name: 'image_profile')
  String get imageProfile;
  @override
  String get type;
  @override
  String get content;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$ModelPostImplCopyWith<_$ModelPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
