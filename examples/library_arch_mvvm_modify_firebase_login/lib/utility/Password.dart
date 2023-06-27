import 'package:formz/formz.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Utility.dart';

enum PasswordValidationError { invalid }

base class Password extends FormzInput<String, PasswordValidationError> {
  /// {@macro password}
  const Password.pure() : super.pure('');

  /// {@macro password}
  const Password.dirty(super.value) : super.dirty();

  @override
  PasswordValidationError? validator(String value) {
    return passwordRegExp.hasMatch(value)
        ? null
        : PasswordValidationError.invalid;
  }
}
