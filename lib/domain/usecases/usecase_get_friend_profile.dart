import 'package:coding_exercise/domain/entities/entity_user.dart';
import 'package:coding_exercise/domain/repositories/repository_data.dart';
import 'package:dartz/dartz.dart';

class UseCaseGetFriendProfile {
  final RepositoryData _repository;
  UseCaseGetFriendProfile(this._repository);

  Future<Either<Exception, EntityUser>> call(int id) async {
    return await _repository.getFriendProfile(id);
  }
}
