# Owesome_validator 🛒

![pub package](https://img.shields.io/pub/v/owesome_validator?label=owesome_validator&style=plastic)

A flutter package for make your life easy. This package is used for validation.

**Show some ❤️ and star the repo to support the project**

This Package is open for contributions.

## Usage

To use this plugin, add `owesome_validator` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

## Getting Started

- first import a package into your file.

- After importing, we are able to get the built-in methods
  - Name Validation
    ```
         OwesomeValidator.name(name, OwesomeValidator.patternNameOnlyChar);
    ```
  - Email Validation ➖
    ```
         OwesomeValidator.email(email, OwesomeValidator.patternEmail);
    ```
  - Phone Validation ➕
    ```
         OwesomeValidator.phone(phone, OwesomeValidator.patternPhone);
    ```
  - password
    ```
        OwesomeValidator.password(password, OwesomeValidator.passwordMinLen8withCamelAndSpecialChar)
    ```

 ### Note 
    You can pass your custom regex for validation. This package will be improved more by time to time  