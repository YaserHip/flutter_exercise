import 'package:coding_exercise/data/models/model_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_friends_list.freezed.dart';
part 'model_friends_list.g.dart';

@freezed
class ModelFriendsList with _$ModelFriendsList {
  const factory ModelFriendsList({
    required List<ModelUser> data,
  }) = _ModelFriendsList;

  factory ModelFriendsList.fromJson(Map<String, dynamic> json) =>
      _$ModelFriendsListFromJson(json);
}
