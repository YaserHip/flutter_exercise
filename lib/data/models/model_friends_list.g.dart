// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_friends_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelFriendsListImpl _$$ModelFriendsListImplFromJson(
        Map<String, dynamic> json) =>
    _$ModelFriendsListImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => ModelUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ModelFriendsListImplToJson(
        _$ModelFriendsListImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
