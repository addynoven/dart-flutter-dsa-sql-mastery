/*
Lesson 02: Dependency Mocking with Mocktail
Concept: Mocking external Repositories & API dependencies using Mock, when().thenAnswer(), and verify().
*/

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Interface under test
abstract class UserApiService {
  Future<String> getUserName(int id);
}

// Mock implementation using Mocktail
class MockUserApiService extends Mock implements UserApiService {}

// ViewModel using the service
class UserViewModel {
  final UserApiService apiService;
  UserViewModel(this.apiService);

  Future<String> getGreeting(int id) async {
    final name = await apiService.getUserName(id);
    return 'Hello, $name!';
  }
}

void main() {
  group('UserViewModel Mocktail Tests', () {
    late MockUserApiService mockApi;
    late UserViewModel viewModel;

    setUp(() {
      mockApi = MockUserApiService();
      viewModel = UserViewModel(mockApi);
    });

    test('returns formatted greeting when API succeeds', () async {
      // Stubbing mock method
      when(() => mockApi.getUserName(101)).thenAnswer((_) async => 'Alice');

      final greeting = await viewModel.getGreeting(101);

      expect(greeting, equals('Hello, Alice!'));
      verify(() => mockApi.getUserName(101)).called(1);
    });

    test('propagates exception when API fails', () async {
      when(() => mockApi.getUserName(999)).thenThrow(Exception('User not found'));

      expect(() => viewModel.getGreeting(999), throwsException);
      verify(() => mockApi.getUserName(999)).called(1);
    });
  });
}
