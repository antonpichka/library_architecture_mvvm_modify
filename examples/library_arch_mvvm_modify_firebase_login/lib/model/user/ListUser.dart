import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

class ListUser<T extends User> extends BaseListModel<T> {
  ListUser.success(super.listModel) : super.success();
  ListUser.exception(super.exception) : super.exception();

  static ListUser get getListUserForSuccess => ListUser.success([]);
}
