import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_architecture_mastery/main.dart';

void main() {
  testWidgets('Dashboard renders successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const MasterAppDashboard());
    expect(find.text('📱 Flutter Architecture Dashboard'), findsOneWidget);
  });
}
