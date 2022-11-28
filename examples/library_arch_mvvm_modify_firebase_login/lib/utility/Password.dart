import 'package:formz/formz.dart';

enum PasswordValidationError {
  invalid
}

class Password
    extends FormzInput<String, PasswordValidationError>
{
  /// {@macro password}
  const Password.pure() : super.pure('');

  /// {@macro password}
  const Password.dirty(super.value) : super.dirty();

  static final _passwordRegExp =
  RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');

  @override
  PasswordValidationError? validator(
      String value)
  {
    return _passwordRegExp.hasMatch(value)
        ? null
        : PasswordValidationError.invalid;
  }
}