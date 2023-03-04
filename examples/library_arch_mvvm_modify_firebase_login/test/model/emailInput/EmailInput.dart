import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:test/test.dart';

void main() {
  group('get success', () {
    test('getOneParametersNamedForEmailInputWidget', () {
      final emailInput = EmailInput.getEmailInputForSuccess;
      expect(emailInput.getOneParametersNamedForEmailInputWidget, "");
    });
    test('getOneParametersNamedForLoginButtonWidget', () {
      final emailInput = EmailInput.getEmailInputForSuccess;
      expect(
          emailInput.getOneParametersNamedForLoginButtonWidget != null, true);
    });
    test('getTwoParametersNamedForLoginButtonWidget', () {
      final emailInput = EmailInput.getEmailInputForSuccess;
      expect(emailInput.getTwoParametersNamedForLoginButtonWidget, "");
    });
    test('getOneParametersNamedForSignUpButtonWidget', () {
      final emailInput = EmailInput.getEmailInputForSuccess;
      expect(
          emailInput.getOneParametersNamedForSignUpButtonWidget != null, true);
    });
    test('getTwoParametersNamedForSignUpButtonWidget', () {
      final emailInput = EmailInput.getEmailInputForSuccess;
      expect(emailInput.getTwoParametersNamedForSignUpButtonWidget, "");
    });
  });
  group('set success', () {
    test('setOneParametersNamedForEmailInputWidget', () {
      final emailInput = EmailInput.getEmailInputForSuccess;
      emailInput.setOneParametersNamedForEmailInputWidget = "";
      expect(emailInput.email != null, true);
    });
  });
  group('is success', () {
    test('isOneParametersNamedForEmailInputWidget', () {
      final emailInput = EmailInput.getEmailInputForSuccess;
      expect(emailInput.isOneParametersNamedForEmailInputWidget(), false);
    });
  });
}
