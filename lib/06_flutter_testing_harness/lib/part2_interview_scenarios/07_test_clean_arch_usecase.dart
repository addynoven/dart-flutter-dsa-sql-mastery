/*
Scenario 07: TDD Unit Testing Clean Architecture UseCases
Problem: Test GetUserUseCase in isolation using Mock Repository according to TDD principles.
*/

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class UserEntity {
  final String id;
  final String name;
  UserEntity(this.id, this.name);
}

abstract class UserRepositoryContract {
  Future<UserEntity> getUser(String id);
}

class MockUserRepositoryContract extends Mock implements UserRepositoryContract {}

class GetUserUseCase {
  final UserRepositoryContract repository;
  GetUserUseCase(this.repository);

  Future<UserEntity> execute(String id) => repository.getUser(id);
}

void main() {
  test('GetUserUseCase returns UserEntity from repository', () async {
    final mockRepo = MockUserRepositoryContract();
    final useCase = GetUserUseCase(mockRepo);

    when(() => mockRepo.getUser('usr_1')).thenAnswer((_) async => UserEntity('usr_1', 'Alice'));

    final user = await useCase.execute('usr_1');

    expect(user.name, equals('Alice'));
    verify(() => mockRepo.getUser('usr_1')).called(1);
  });
}
