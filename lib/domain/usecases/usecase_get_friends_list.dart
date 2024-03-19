import 'package:coding_exercise/domain/entities/entity_user.dart';
import 'package:coding_exercise/domain/repositories/repository_data.dart';
import 'package:dartz/dartz.dart';

class UseCaseGetFriendsList {
  final RepositoryData _repository;
  UseCaseGetFriendsList(this._repository);

  Future<Either<Exception, List<EntityUser>>> call() async {
    return await _repository.getFriendsList();
  }
}
