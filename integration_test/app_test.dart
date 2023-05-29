import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:integration_testing/home_screen.dart';
import 'package:integration_testing/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('end to end testing', () {
    testWidgets(
        'GIVEN app WHEN the username & password is correct THEN possible to navigate homeScreen otherwise display error message',
        (tester) async {
      app.main();
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(const Key('user')), 'username');
      await tester.enterText(find.byKey(const Key('pass')), 'password');
      await tester.tap(find.byKey(const Key('enterBtn')));
      await tester.pumpAndSettle();
      expect(find.byType(HomeScreen), findsOneWidget);
    });
  });
}
