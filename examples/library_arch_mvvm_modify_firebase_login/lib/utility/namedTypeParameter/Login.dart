import 'package:formz/formz.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Email.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Password.dart';

class Login {
  Email email;
  Password password;
  FormzStatus status;

  Login(this.email,this.password,this.status);
}