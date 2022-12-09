import 'package:library_arch_mvvm_modify_firebase_login/utility/Utility.dart';

class Login {
  String? email;
  String? password;

  Login(this.email,this.password);

  bool isNotHasMatchParameterEmail() {
    return !emailRegExp.hasMatch(email!);
  }

  bool isNotHasMatchParameterPassword() {
    return !passwordRegExp.hasMatch(password!);
  }
}