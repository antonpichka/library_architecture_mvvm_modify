import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInputFirstBranchOne.dart';

class ListPasswordInputFirstBranchOne<T extends PasswordInputFirstBranchOne>
    extends ListPasswordInput<T> {
  ListPasswordInputFirstBranchOne.success(super.list) : super.success();

  static ListPasswordInputFirstBranchOne
      get getListPasswordInputFirstBranchOneForSuccess =>
          ListPasswordInputFirstBranchOne.success([]);
}
