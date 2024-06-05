// lib/util/form_test.dart

bool isValidName(String s) {
  return s.isNotEmpty;
}

bool isValidIdentityNumber(String s) {
  return s.isNotEmpty; // Simplified for demo
}

bool isValidBirthdate(String s) {
  return s.isNotEmpty; // Simplified for demo, ideally use a date parser
}

bool isValidGender(String s) {
  return s == 'Male' || s == 'Female' || s == 'Other';
}

bool isValidPhoneNumber(String s) {
  return s.isNotEmpty; // Simplified for demo, ideally use a regex
}

bool isValidLastEducation(String s) {
  return s.isNotEmpty;
}

bool isValidReligion(String s) {
  return s.isNotEmpty;
}

bool isValidJob(String s) {
  return s.isNotEmpty;
}

bool isValidAddress(String s) {
  return s.isNotEmpty;
}

bool isValidAccountType(String s) {
  return s.isNotEmpty;
}
