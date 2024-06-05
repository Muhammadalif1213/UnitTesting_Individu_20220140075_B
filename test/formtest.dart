// test/form_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/util/form_test.dart';

void main() {
  group('Form Validation Tests', () {
    test('Validates name', () {
      expect(isValidName('John Doe'), isTrue);
      expect(isValidName(''), isFalse);
    });

    test('Validates identity number', () {
      expect(isValidIdentityNumber('1234567890'), isTrue);
      expect(isValidIdentityNumber(''), isFalse);
    });

    test('Validates birthdate', () {
      expect(isValidBirthdate('2000-01-01'), isTrue);
      expect(isValidBirthdate(''), isFalse);
    });

    test('Validates gender', () {
      expect(isValidGender('Male'), isTrue);
      expect(isValidGender('Female'), isTrue);
      expect(isValidGender('Other'), isTrue);
      expect(isValidGender(''), isFalse);
    });

    test('Validates phone number', () {
      expect(isValidPhoneNumber('+1234567890'), isTrue);
      expect(isValidPhoneNumber('12345'), isTrue); // Simplified for demo
      expect(isValidPhoneNumber(''), isFalse);
    });

    test('Validates last education', () {
      expect(isValidLastEducation('Bachelor'), isTrue);
      expect(isValidLastEducation(''), isFalse);
    });

    test('Validates religion', () {
      expect(isValidReligion('Christianity'), isTrue);
      expect(isValidReligion(''), isFalse);
    });

    test('Validates job', () {
      expect(isValidJob('Software Developer'), isTrue);
      expect(isValidJob(''), isFalse);
    });

    test('Validates address', () {
      expect(isValidAddress('123 Main St'), isTrue);
      expect(isValidAddress(''), isFalse);
    });

    test('Validates account type', () {
      expect(isValidAccountType('Savings'), isTrue);
      expect(isValidAccountType(''), isFalse);
    });
  });
}
