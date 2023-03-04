import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:test/test.dart';

void main() {
  group('get success', () {
    test('getOneParametersNamedForPasswordInputWidget', () {
      final passwordInput = PasswordInput.getPasswordInputForSuccess;
      expect(passwordInput.getOneParametersNamedForPasswordInputWidget, "");
    });
    test('getOneParametersNamedForLoginButtonWidget', () {
      final passwordInput = PasswordInput.getPasswordInputForSuccess;
      expect(passwordInput.getOneParametersNamedForLoginButtonWidget != null,
          true);
    });
    test('getTwoParametersNamedForLoginButtonWidget', () {
      final passwordInput = PasswordInput.getPasswordInputForSuccess;
      expect(passwordInput.getTwoParametersNamedForLoginButtonWidget, "");
    });
  });
  group('set success', () {
    test('setOneParametersNamedForPasswordInputWidget', () {
      final passwordInput = PasswordInput.getPasswordInputForSuccess;
      passwordInput.setOneParametersNamedForPasswordInputWidget = "";
      expect(passwordInput.password != null, true);
    });
  });
  group('is success', () {
    test('isOneParametersNamedForPasswordInputWidget', () {
      final passwordInput = PasswordInput.getPasswordInputForSuccess;
      expect(passwordInput.isOneParametersNamedForPasswordInputWidget(), false);
    });
  });
}
