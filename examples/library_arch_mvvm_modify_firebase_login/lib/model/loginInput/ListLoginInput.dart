import 'package:library_arch_mvvm_modify_firebase_login/model/loginInput/LoginInput.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

class ListLoginInput
    extends BaseListModel<LoginInput>
{
  ListLoginInput.success(super.list) : super.success();
  ListLoginInput.exception(super.exception) : super.exception();
}