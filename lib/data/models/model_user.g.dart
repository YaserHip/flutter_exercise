// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelUserImpl _$$ModelUserImplFromJson(Map<String, dynamic> json) =>
    _$ModelUserImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      age: json['age'] as int,
      imageProfile: json['image_profile'] as String,
      gender: json['gender'] as String,
      status: json['status'] as String,
      occupation: json['occupation'] as String,
      company: json['company'] as String,
      education: json['education'] as String,
      location: json['location'] as String,
      bio: json['bio'] as String,
    );

Map<String, dynamic> _$$ModelUserImplToJson(_$ModelUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'image_profile': instance.imageProfile,
      'gender': instance.gender,
      'status': instance.status,
      'occupation': instance.occupation,
      'company': instance.company,
      'education': instance.education,
      'location': instance.location,
      'bio': instance.bio,
    };
