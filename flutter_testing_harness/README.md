# 🧪 Flutter Testing, TDD & Mocktail Mastery

A hands-on, production-grade Flutter practice suite covering **Unit Testing**, **Mocking with Mocktail**, **BLoC Testing (`blocTest`)**, **Widget Testing (`WidgetTester`, `pumpAndSettle`)**, and **Integration Testing**.

---

## 🚀 Features

- 🧪 **Unit & TDD Testing**: Master `test()`, `group()`, `expect()`, custom matchers, and TDD workflows for business logic.
- 🤡 **Mocktail Dependency Stubbing**: Learn `Mock`, `when().thenAnswer()`, `when().thenThrow()`, and `verify().called()`.
- 🧩 **BLoC & Cubit Testing**: Test event-driven state transitions with `blocTest<Bloc, State>()`.
- 🖼️ **Widget & Gesture Testing**: Test Flutter UI rendering, finders (`find.byType`, `find.text`), user gestures (`tester.tap`, `tester.enterText`, `tester.drag`), and frame pumps (`tester.pumpAndSettle()`).

---

## 📌 Quick Links
- 📋 **[Track Your Testing Progress on todo_testing.md](todo_testing.md)**
- ⚡ **[mocktail Package Docs](https://pub.dev/packages/mocktail)**
- ⚡ **[bloc_test Package Docs](https://pub.dev/packages/bloc_test)**

---

## 💡 Flutter Testing & TDD Cheat Sheet

### 1. Test Pyramid in Flutter

| Test Type | Target | Speed | Dependencies | Key Package |
|---|---|---|---|---|
| **Unit Test** | Functions, ViewModels, Repositories, Blocs | ⚡ Instant (< 10ms) | Mocked with `mocktail` | `test`, `mocktail`, `bloc_test` |
| **Widget Test** | UI Widgets, Forms, Gestures, Dialogs | 🚀 Fast (< 100ms) | Fake/Mock Repositories | `flutter_test` |
| **Integration Test** | End-to-end full app flows | 🐢 Slower (Seconds) | Real/Mocked Backends | `integration_test` |

---

### 2. Mocktail Cheat Sheet
```dart
class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late MockAuthRepository mockRepo;

  setUp(() {
    mockRepo = MockAuthRepository();
  });

  test('login returns token on success', () async {
    // Stubbing method call
    when(() => mockRepo.login('user', '123')).thenAnswer((_) async => 'token_123');

    final token = await mockRepo.login('user', '123');

    expect(token, equals('token_123'));
    verify(() => mockRepo.login('user', '123')).called(1);
  });
}
```

---

## 🚀 How to Run Exercises

1. Install dependencies:
   ```bash
   cd flutter_testing_harness
   flutter pub get
   ```

2. Run tests across the entire package or a specific file:
   ```bash
   # Run all tests:
   flutter test

   # Run a specific unit test file:
   flutter test lib/part1_topics/01_unit_testing_basics.dart

   # Run a specific scenario test:
   flutter test lib/part2_interview_scenarios/01_test_shopping_cart_bloc.dart
   ```
