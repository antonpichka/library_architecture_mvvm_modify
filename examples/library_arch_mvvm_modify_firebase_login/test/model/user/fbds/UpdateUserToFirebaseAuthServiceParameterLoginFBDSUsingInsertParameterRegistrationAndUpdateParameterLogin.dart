import 'package:library_arch_mvvm_modify_firebase_login/model/user/fbds/UpdateUserToFirebaseAuthServiceParameterLoginFBDSUsingInsertParameterRegistrationAndUpdateParameterLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Login.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';
import 'package:test/test.dart';

void main() {
  test('updateUserToFirebaseAuthServiceParameterLoginFBDSUsingInsertParameterRegistrationAndUpdateParameterLogin success', () {
    final fbds = UpdateUserToFirebaseAuthServiceParameterLoginFBDSUsingInsertParameterRegistrationAndUpdateParameterLogin();
    final parameter = Login("test@gmail.com","q1qqq111");
    final result = fbds.updateModelToNamedServiceParameterNamed(parameter, null);
    expect(result
        ?.exceptionController
        .enumWhatIsTheException,EnumWhatIsTheException.noException);
  });
}