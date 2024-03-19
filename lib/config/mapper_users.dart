import 'package:coding_exercise/data/models/model_user.dart';
import 'package:coding_exercise/domain/entities/entity_user.dart';

extension MapperUser on ModelUser {
  EntityUser toEntity() => EntityUser(
      id: id,
      name: name,
      age: age,
      imageProfile: imageProfile,
      gender: gender,
      status: status,
      occupation: occupation,
      company: company,
      education: education,
      location: location,
      bio: bio);
}
