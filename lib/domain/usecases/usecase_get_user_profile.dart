import 'package:coding_exercise/domain/entities/entity_user.dart';
import 'package:coding_exercise/domain/repositories/repository_data.dart';
import 'package:dartz/dartz.dart';

class UseCaseGetUserProfile {
  final RepositoryData _repository;
  UseCaseGetUserProfile(this._repository);

  Future<Either<Exception, EntityUser>> call() async {
    await Future.delayed(const Duration(seconds: 1));
    return await _repository.getUserProfile();
  }
}
