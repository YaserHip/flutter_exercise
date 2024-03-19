// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_user.freezed.dart';
part 'model_user.g.dart';

@freezed
class ModelUser with _$ModelUser {
  const factory ModelUser({
    required int id,
    required String name,
    required int age,
    @JsonKey(name: 'image_profile') required String imageProfile,
    required String gender,
    required String status,
    required String occupation,
    required String company,
    required String education,
    required String location,
    required String bio,
  }) = _ModelUser;

  factory ModelUser.fromJson(Map<String, dynamic> json) =>
      _$ModelUserFromJson(json);
}
