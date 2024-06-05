// integration_test/form_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:form_example/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Form Integration Test', () {
    testWidgets('Submit form with valid data', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Enter data into the form fields with a delay
      await tester.enterText(find.byKey(const Key('nameField')), 'John Doe');
      await Future.delayed(const Duration(seconds: 3));
      await tester.enterText(find.byKey(const Key('identityNumberField')), '1234567890');
      await Future.delayed(const Duration(seconds: 3));
      await tester.enterText(find.byKey(const Key('birthdateField')), '2000-01-01');
      await Future.delayed(const Duration(seconds: 3));
      await tester.enterText(find.byKey(const Key('genderField')), 'Male');
      await Future.delayed(const Duration(seconds: 3));
      await tester.enterText(find.byKey(const Key('phoneNumberField')), '+1234567890');
      await Future.delayed(const Duration(seconds: 3));
      await tester.enterText(find.byKey(const Key('lastEducationField')), 'Bachelor');
      await Future.delayed(const Duration(seconds: 3));
      await tester.enterText(find.byKey(const Key('religionField')), 'Christianity');
      await Future.delayed(const Duration(seconds: 3));
      await tester.enterText(find.byKey(const Key('jobField')), 'Software Developer');
      await Future.delayed(const Duration(seconds: 3));
      await tester.enterText(find.byKey(const Key('addressField')), '123 Main St');
      await Future.delayed(const Duration(seconds: 3));
      await tester.enterText(find.byKey(const Key('accountTypeField')), 'Savings');
      await Future.delayed(const Duration(seconds: 3));

      // Tap the submit button
      await tester.tap(find.text('Submit Data'));
      await tester.pumpAndSettle();

      // Verify that the navigation to the ViewPage occurs
      expect(find.text('John Doe'), findsOneWidget);
      expect(find.text('1234567890'), findsOneWidget);
      expect(find.text('2000-01-01'), findsOneWidget);
      expect(find.text('Male'), findsOneWidget);
      expect(find.text('+1234567890'), findsOneWidget);
      expect(find.text('Bachelor'), findsOneWidget);
      expect(find.text('Christianity'), findsOneWidget);
      expect(find.text('Software Developer'), findsOneWidget);
      expect(find.text('123 Main St'), findsOneWidget);
      expect(find.text('Savings'), findsOneWidget);
    });

    testWidgets('Show warning when submitting with empty fields', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Tap the submit button without entering any data
      await tester.tap(find.text('Submit Data'));
      await tester.pumpAndSettle();

      // Verify that the warning dialog is shown
      expect(find.text('Warning !!'), findsOneWidget);
      expect(find.text('Please, input all your data needed...'), findsOneWidget);
      await tester.tap(find.text('OK'));
      await tester.pumpAndSettle();
    });
  });
}
