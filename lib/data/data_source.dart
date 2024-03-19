import 'package:coding_exercise/data/models/model_friends_list.dart';
import 'package:coding_exercise/data/models/model_post.dart';
import 'package:coding_exercise/data/models/model_post_result.dart';
import 'package:coding_exercise/data/models/model_user.dart';

abstract mixin class DataSource {
  Future<ModelPostResult> getPostsList();
  Future<ModelUser> getUserProfile();
  Future<ModelFriendsList> getFriendsList();
  Future<ModelUser> getFriendProfile(int userId);
  Future<ModelPost> getPostDetails(int postId);
}
