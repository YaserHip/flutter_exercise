import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_post.freezed.dart';

@freezed
class EntityPost with _$EntityPost {
  const factory EntityPost({
    required int id,
    required String date,
    required int userId,
    required String username,
    required String imageProfile,
    required String type,
    required String content,
    required String imageUrl,
  }) = _EntityPost;
}
