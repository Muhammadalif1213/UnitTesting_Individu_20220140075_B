// test/form_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/util/form_test.dart';

void main() {
  group('Form Validation Tests', () {
    test('Validates name', () {
      expect(isValidName('Muhammada Alifian Aqilah'), isTrue);
      expect(isValidName(''), isFalse);
    });

    test('Validates identity number', () {
      expect(isValidIdentityNumber('20220140075'), isTrue);
      expect(isValidIdentityNumber(''), isFalse);
    });

    test('Validates birthdate', () {
      expect(isValidBirthdate('2004-09-24'), isTrue);
      expect(isValidBirthdate(''), isFalse);
    });

    test('Validates gender', () {
      expect(isValidGender('Male'), isTrue);
      expect(isValidGender('Female'), isTrue);
      expect(isValidGender('Other'), isTrue);
      expect(isValidGender(''), isFalse);
    });

    test('Validates phone number', () {
      expect(isValidPhoneNumber('089604639862'), isTrue);
      expect(isValidPhoneNumber('12345'), isTrue); // Simplified for demo
      expect(isValidPhoneNumber(''), isFalse);
    });

    test('Validates last education', () {
      expect(isValidLastEducation('SMA'), isTrue);
      expect(isValidLastEducation(''), isFalse);
    });

    test('Validates religion', () {
      expect(isValidReligion('Muslim'), isTrue);
      expect(isValidReligion(''), isFalse);
    });

    test('Validates job', () {
      expect(isValidJob('Pelajar'), isTrue);
      expect(isValidJob(''), isFalse);
    });

    test('Validates address', () {
      expect(isValidAddress('Karawang'), isTrue);
      expect(isValidAddress(''), isFalse);
    });

    test('Validates account type', () {
      expect(isValidAccountType('Tabungan'), isTrue);
      expect(isValidAccountType(''), isFalse);
    });
  });
}
