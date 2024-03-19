import 'package:coding_exercise/data/models/model_post.dart';
import 'package:coding_exercise/domain/entities/entity_post.dart';

extension MapperPost on ModelPost {
  EntityPost toEntity() => EntityPost(
      id: id,
      date: date,
      userId: userId,
      type: type,
      content: content,
      imageUrl: imageUrl,
      username: username,
      imageProfile: imageProfile);
}
