import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

class ListUser
    extends BaseListModel<User>
{
  ListUser.success(super._list) : super.success();
  ListUser.exception(super.exception) : super.exception();
}