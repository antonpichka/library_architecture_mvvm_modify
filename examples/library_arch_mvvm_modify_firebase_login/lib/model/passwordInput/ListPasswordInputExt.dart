import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInputExt.dart';

class ListPasswordInputExt<T extends PasswordInputExt>
    extends ListPasswordInput<T>
{
  ListPasswordInputExt.success(super.list) : super.success();
}