import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_networking_sync/main.dart';

void main() {
  testWidgets('Networking Dashboard renders successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const MasterAppDashboard());
    expect(find.text('🌐 Networking & Sync Dashboard'), findsOneWidget);
  });
}
