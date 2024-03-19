import 'package:coding_exercise/data/models/model_post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_post_result.freezed.dart';
part 'model_post_result.g.dart';

@freezed
class ModelPostResult with _$ModelPostResult {
  const factory ModelPostResult({required List<ModelPost> data}) =
      _ModelPostResult;

  factory ModelPostResult.fromJson(Map<String, dynamic> json) =>
      _$ModelPostResultFromJson(json);
}
