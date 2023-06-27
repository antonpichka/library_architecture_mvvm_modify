import 'package:formz/formz.dart';

/// Validation errors for the [ConfirmedPassword] [FormzInput].
enum ConfirmedPasswordValidationError {
  /// Generic invalid error.
  invalid
}

base class ConfirmedPassword
    extends FormzInput<String, ConfirmedPasswordValidationError> {
  /// The original password.
  final String password;

  /// {@macro confirmed_password}
  const ConfirmedPassword.pure({this.password = ''}) : super.pure('');

  /// {@macro confirmed_password}
  const ConfirmedPassword.dirty({required this.password, String value = ''})
      : super.dirty(value);

  @override
  ConfirmedPasswordValidationError? validator(String value) {
    return password == value ? null : ConfirmedPasswordValidationError.invalid;
  }
}
