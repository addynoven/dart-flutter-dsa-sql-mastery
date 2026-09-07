import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing_harness/main.dart';

void main() {
  testWidgets('Testing Dashboard renders successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const MasterAppDashboard());
    expect(find.text('🧪 Flutter Testing Dashboard'), findsOneWidget);
  });
}
