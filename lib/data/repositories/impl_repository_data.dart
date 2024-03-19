import 'package:coding_exercise/config/mapper_post.dart';
import 'package:coding_exercise/config/mapper_users.dart';
import 'package:coding_exercise/data/data_source.dart';
import 'package:coding_exercise/domain/entities/entity_post.dart';
import 'package:coding_exercise/domain/entities/entity_user.dart';
import 'package:coding_exercise/domain/repositories/repository_data.dart';
import 'package:dartz/dartz.dart';

class ImplRepositoryData implements RepositoryData {
  final DataSource source;

  ImplRepositoryData({required this.source});

  @override
  Future<Either<Exception, EntityUser>> getFriendProfile(int id) async {
    try {
      final response = await source.getFriendProfile(id);
      return Right(response.toEntity());
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, List<EntityUser>>> getFriendsList() async {
    try {
      final response = await source.getFriendsList();
      return Right(response.data.map((e) => e.toEntity()).toList());
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, EntityPost>> getPostDetails(int id) async {
    try {
      final response = await source.getPostDetails(id);
      return Right(response.toEntity());
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, List<EntityPost>>> getPostsList() async {
    try {
      final response = await source.getPostsList();
      return Right(response.data.map((e) => e.toEntity()).toList());
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, EntityUser>> getUserProfile() async {
    try {
      final response = await source.getUserProfile();
      return Right(response.toEntity());
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
