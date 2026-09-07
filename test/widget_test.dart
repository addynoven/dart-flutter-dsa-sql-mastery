import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_developer_interview_mastery/main.dart';

void main() {
  testWidgets('Master Portal Home Screen renders successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const MasterAppPortal());
    expect(find.text('🚀 Mobile Developer Interview Mastery'), findsOneWidget);
  });
}
