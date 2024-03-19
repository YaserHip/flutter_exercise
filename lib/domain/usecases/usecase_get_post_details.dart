import 'package:coding_exercise/domain/entities/entity_post.dart';
import 'package:coding_exercise/domain/repositories/repository_data.dart';
import 'package:dartz/dartz.dart';

class UseCaseGetPostDetails {
  final RepositoryData _repository;
  UseCaseGetPostDetails(this._repository);

  Future<Either<Exception, EntityPost>> call(int id) async {
    return await _repository.getPostDetails(id);
  }
}
