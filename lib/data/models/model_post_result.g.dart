// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_post_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelPostResultImpl _$$ModelPostResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ModelPostResultImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => ModelPost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ModelPostResultImplToJson(
        _$ModelPostResultImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
