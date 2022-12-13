import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

class ListEmailInput<T extends EmailInput>
    extends BaseListModel<T>
{
  ListEmailInput.success(super._list) : super.success();
}