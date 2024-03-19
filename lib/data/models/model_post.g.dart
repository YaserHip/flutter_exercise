// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelPostImpl _$$ModelPostImplFromJson(Map<String, dynamic> json) =>
    _$ModelPostImpl(
      id: json['id'] as int,
      date: json['date'] as String,
      userId: json['user_id'] as int,
      username: json['username'] as String,
      imageProfile: json['image_profile'] as String,
      type: json['type'] as String,
      content: json['content'] as String,
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$$ModelPostImplToJson(_$ModelPostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'user_id': instance.userId,
      'username': instance.username,
      'image_profile': instance.imageProfile,
      'type': instance.type,
      'content': instance.content,
      'image_url': instance.imageUrl,
    };
