import 'dart:convert';

import 'package:coding_exercise/config/app_constants.dart';
import 'package:coding_exercise/data/data_source.dart';
import 'package:coding_exercise/data/models/model_friends_list.dart';
import 'package:coding_exercise/data/models/model_post.dart';
import 'package:coding_exercise/data/models/model_post_result.dart';
import 'package:coding_exercise/data/models/model_user.dart';
import 'package:flutter/services.dart';

class ImplDataSource implements DataSource {
  @override
  Future<ModelFriendsList> getFriendsList() async {
    var data = await _getJsonFromAssets(AppConstants.pathFriends);
    return ModelFriendsList.fromJson(data);
  }

  @override
  Future<ModelPostResult> getPostsList() async {
    var data = await _getJsonFromAssets(AppConstants.pathPosts);
    return ModelPostResult.fromJson(data);
  }

  @override
  Future<ModelUser> getUserProfile() async {
    var data = await _getJsonFromAssets(AppConstants.pathUserProfile);
    return ModelUser.fromJson(data);
  }

  @override
  Future<ModelUser> getFriendProfile(int userId) async {
    var data = await _getJsonFromAssets(AppConstants.pathFriends);
    var friendsList = ModelFriendsList.fromJson(data);
    var friendProfile =
        friendsList.data.firstWhere((element) => element.id == userId);
    return friendProfile;
  }

  @override
  Future<ModelPost> getPostDetails(int postId) async {
    var data = await _getJsonFromAssets(AppConstants.pathPosts);
    var postList = ModelPostResult.fromJson(data);
    var postDetail =
        postList.data.firstWhere((element) => element.id == postId);
    return postDetail;
  }

  Future<Map<String, dynamic>> _getJsonFromAssets(String path) async {
    String stringJson = await rootBundle.loadString(path);
    return jsonDecode(stringJson);
  }
}
