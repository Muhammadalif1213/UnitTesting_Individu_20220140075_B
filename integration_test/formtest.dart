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
      await tester.enterText(find.byKey(const Key('nameField')), 'Muhammad Alifian Aqilah');
      await Future.delayed(const Duration(seconds: 3));
      await tester.enterText(find.byKey(const Key('identityNumberField')), '20220140075');
      await Future.delayed(const Duration(seconds: 3));
      await tester.enterText(find.byKey(const Key('birthdateField')), '2004-09-24');
      await Future.delayed(const Duration(seconds: 3));
      await tester.enterText(find.byKey(const Key('genderField')), 'Male');
      await Future.delayed(const Duration(seconds: 3));
      await tester.enterText(find.byKey(const Key('phoneNumberField')), '09604639862');
      await Future.delayed(const Duration(seconds: 3));
      await tester.enterText(find.byKey(const Key('lastEducationField')), 'SMA');
      await Future.delayed(const Duration(seconds: 3));
      await tester.enterText(find.byKey(const Key('religionField')), 'Muslim');
      await Future.delayed(const Duration(seconds: 3));
      await tester.enterText(find.byKey(const Key('jobField')), 'Pelajar');
      await Future.delayed(const Duration(seconds: 3));
      await tester.enterText(find.byKey(const Key('addressField')), 'Karawang');
      await Future.delayed(const Duration(seconds: 3));
      await tester.enterText(find.byKey(const Key('accountTypeField')), 'Tabungan');
      await Future.delayed(const Duration(seconds: 3));

      // Tap the submit button
      await tester.tap(find.text('Submit Data'));
      await tester.pumpAndSettle();

      // Verify that the navigation to the ViewPage occurs
      expect(find.text('Muhammad Alifian Aqilah'), findsOneWidget);
      expect(find.text('20220140075'), findsOneWidget);
      expect(find.text('2004-09-24'), findsOneWidget);
      expect(find.text('Male'), findsOneWidget);
      expect(find.text('089604639862'), findsOneWidget);
      expect(find.text('SMA'), findsOneWidget);
      expect(find.text('Muslim'), findsOneWidget);
      expect(find.text('Pelajar'), findsOneWidget);
      expect(find.text('Pelajar'), findsOneWidget);
      expect(find.text('Tabungan'), findsOneWidget);
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
