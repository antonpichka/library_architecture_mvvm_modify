import 'package:formz/formz.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Utility.dart';

enum EmailValidationError { invalid }

base class Email extends FormzInput<String, EmailValidationError> {
  /// {@macro email}
  const Email.pure() : super.pure('');

  /// {@macro email}
  const Email.dirty(super.value) : super.dirty();

  @override
  EmailValidationError? validator(String value) {
    return emailRegExp.hasMatch(value) ? null : EmailValidationError.invalid;
  }
}
