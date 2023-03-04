import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInputFirstBranchOne.dart';
import 'package:test/test.dart';

void main() {
  group('get success', () {
    test('getOneParametersNamedForConfirmedPasswordInputWidget', () {
      final passwordInput =
          PasswordInputFirstBranchOne.getPasswordInputFirstBranchOneForSuccess;
      expect(passwordInput.getOneParametersNamedForConfirmedPasswordInputWidget,
          "");
    });
    test('getOneParametersNamedForSignUpButtonWidget', () {
      final passwordInput =
          PasswordInputFirstBranchOne.getPasswordInputFirstBranchOneForSuccess;
      expect(passwordInput.getOneParametersNamedForSignUpButtonWidget != null,
          true);
    });
    test('getTwoParametersNamedForSignUpButtonWidget', () {
      final passwordInput =
          PasswordInputFirstBranchOne.getPasswordInputFirstBranchOneForSuccess;
      expect(passwordInput.getTwoParametersNamedForSignUpButtonWidget != null,
          true);
    });
    test('getThreeParametersNamedForSignUpButtonWidget', () {
      final passwordInput =
          PasswordInputFirstBranchOne.getPasswordInputFirstBranchOneForSuccess;
      expect(passwordInput.getThreeParametersNamedForSignUpButtonWidget, "");
    });
  });
  group('set success', () {
    test('setOneParametersNamedForPasswordInputWidget', () {
      final passwordInput =
          PasswordInputFirstBranchOne.getPasswordInputFirstBranchOneForSuccess;
      passwordInput.setOneParametersNamedForPasswordInputWidget = "";
      expect(passwordInput.confirmedPassword != null, true);
    });
    test('setOneParametersNamedForConfirmedPasswordInputWidget', () {
      final passwordInput =
          PasswordInputFirstBranchOne.getPasswordInputFirstBranchOneForSuccess;
      passwordInput.setOneParametersNamedForConfirmedPasswordInputWidget = "";
      expect(passwordInput.confirmedPassword != null, true);
    });
  });
  group('is success', () {
    test('isOneParametersNamedForConfirmedPasswordInputWidget', () {
      final passwordInput =
          PasswordInputFirstBranchOne.getPasswordInputFirstBranchOneForSuccess;
      expect(
          passwordInput.isOneParametersNamedForConfirmedPasswordInputWidget(),
          false);
    });
  });
}
