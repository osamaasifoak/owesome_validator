// How to use this package?
// Don't worry it's very simple..

// This is the base class for your understanding
// that what is going on inside this package.

import 'package:owesome_validator/owesome_validator.dart';

class Example {
  /*
    pattern for validationm, These are the basic validation
     regex patterns you can add your custom regex by passing it to function
   */

  /// [PROVIDE YOUR VALUE AND PASS THE NAME PATTERN HERE]
  static bool name(String name, String pattern) {
    RegExp regexName = new RegExp(pattern);
    return !regexName.hasMatch(name) ? false : true;
  }

  /// [PROVIDE YOUR VALUE AND PASS THE PASSWORD PATTERN HERE]
  static bool password(String password, String pattern) {
    RegExp regexPassword = new RegExp(pattern);
    return !regexPassword.hasMatch(password) ? false : true;
  }

  /// [PROVIDE YOUR VALUE AND PASS THE EMAIL PATTERN HERE]
  static bool email(String email, String pattern) {
    RegExp regexEmail = new RegExp(pattern);
    return !regexEmail.hasMatch(email) ? false : true;
  }

  /// [PROVIDE YOUR VALUE AND PASS THE PHONE PATTERN HERE]
  static bool phone(String phone, String pattern) {
    RegExp regexPhone = new RegExp(pattern);
    return !regexPhone.hasMatch(phone) ? false : true;
  }
}

// TEST CASE
// Yeah the usuage is mentioned above just call the class
// function and utilize it, here's the one more if you want to add
// your custom regex so just pass your regex string to the function
// and rest leave on it.
// String myCustomRegexString = r'^[A-Za-z ]+(?:[ _-][A-Za-z ]+)*$';
// OwesomeValidator.name("Osama12@1",myCustomRegexString);

void main() {
  String name = "Osama Asif";
  String email = "osama.asif20@gmail.com";
  String password = "Osama@12345";
  String phone = "+923092783699";
  String invalid = "Invalid";
  String valid = "Valid";
  if (OwesomeValidator.name(name, OwesomeValidator.patternNameOnlyChar)) {
    print(valid);
  } else {
    print(invalid);
  }
  if (OwesomeValidator.email(email, OwesomeValidator.patternEmail)) {
    print(valid);
  } else {
    print(invalid);
  }
  if (OwesomeValidator.password(
      password, OwesomeValidator.passwordMinLen8withCamelAndSpecialChar)) {
    print(valid);
  } else {
    print(invalid);
  }
  if (OwesomeValidator.phone(phone, OwesomeValidator.patternPhone)) {
    print(valid);
  } else {
    print(invalid);
  }
}
