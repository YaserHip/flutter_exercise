// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_post.freezed.dart';
part 'model_post.g.dart';

@freezed
class ModelPost with _$ModelPost {
  const factory ModelPost({
    required int id,
    required String date,
    @JsonKey(name: 'user_id') required int userId,
    required String username,
    @JsonKey(name: 'image_profile') required String imageProfile,
    required String type,
    required String content,
    @JsonKey(name: 'image_url') required String imageUrl,
  }) = _ModelPost;

  factory ModelPost.fromJson(Map<String, dynamic> json) =>
      _$ModelPostFromJson(json);
}
