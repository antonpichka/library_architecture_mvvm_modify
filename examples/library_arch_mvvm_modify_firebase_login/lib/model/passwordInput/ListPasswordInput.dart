import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

class ListPasswordInput<T extends PasswordInput> extends BaseListModel<T> {
  ListPasswordInput.success(super.list) : super.success();

  static ListPasswordInput get getListPasswordInputForSuccess =>
      ListPasswordInput.success([]);
}
