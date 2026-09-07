/*
Scenario 02: Mocking Auth Repository with Exception Handling
Problem: Unit test AuthViewModel using Mocktail to verify successful login and error handling.
*/

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

abstract class AuthRepository {
  Future<String> login(String email, String password);
}

class MockAuthRepository extends Mock implements AuthRepository {}

class AuthViewModel {
  final AuthRepository repository;
  AuthViewModel(this.repository);

  Future<bool> authenticate(String email, String password) async {
    try {
      final token = await repository.login(email, password);
      return token.isNotEmpty;
    } catch (_) {
      return false;
    }
  }
}

void main() {
  group('AuthViewModel Unit Tests', () {
    late MockAuthRepository mockRepo;
    late AuthViewModel viewModel;

    setUp(() {
      mockRepo = MockAuthRepository();
      viewModel = AuthViewModel(mockRepo);
    });

    test('returns true when login succeeds', () async {
      when(() => mockRepo.login('user@dev.com', '123456')).thenAnswer((_) async => 'jwt_token');

      final result = await viewModel.authenticate('user@dev.com', '123456');

      expect(result, isTrue);
      verify(() => mockRepo.login('user@dev.com', '123456')).called(1);
    });

    test('returns false when login throws exception', () async {
      when(() => mockRepo.login('user@dev.com', 'wrong')).thenThrow(Exception('401 Unauthorized'));

      final result = await viewModel.authenticate('user@dev.com', 'wrong');

      expect(result, isFalse);
    });
  });
}
