import 'package:coding_exercise/domain/entities/entity_post.dart';
import 'package:coding_exercise/domain/repositories/repository_data.dart';
import 'package:dartz/dartz.dart';

class UseCaseGetPostsList {
  final RepositoryData _repository;
  UseCaseGetPostsList(this._repository);

  Future<Either<Exception, List<EntityPost>>> call() async {
    return await _repository.getPostsList();
  }
}
