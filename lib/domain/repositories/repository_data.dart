import 'package:coding_exercise/domain/entities/entity_post.dart';
import 'package:coding_exercise/domain/entities/entity_user.dart';
import 'package:dartz/dartz.dart';

abstract mixin class RepositoryData {
  Future<Either<Exception, EntityUser>> getUserProfile();
  Future<Either<Exception, List<EntityUser>>> getFriendsList();
  Future<Either<Exception, EntityUser>> getFriendProfile(int id);
  Future<Either<Exception, List<EntityPost>>> getPostsList();
  Future<Either<Exception, EntityPost>> getPostDetails(int id);
}
