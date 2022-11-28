import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/base_list_model.dart';

class ListUser
    extends BaseListModel<User>
{
  ListUser.success(List<User>? listModel) : super.success(listModel);
  ListUser.exception(BaseException? exception) : super.exception(exception);
}