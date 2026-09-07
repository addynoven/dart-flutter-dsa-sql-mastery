import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rendering_graphics/main.dart';

void main() {
  testWidgets('Graphics Dashboard renders successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const MasterAppDashboard());
    expect(find.text('🎨 Graphics & Animations Dashboard'), findsOneWidget);
  });
}
