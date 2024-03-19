import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_user.freezed.dart';

@freezed
class EntityUser with _$EntityUser {
  const factory EntityUser({
    required int id,
    required String name,
    required int age,
    required String imageProfile,
    required String gender,
    required String status,
    required String occupation,
    required String company,
    required String education,
    required String location,
    required String bio,
  }) = _EntityUser;
}
