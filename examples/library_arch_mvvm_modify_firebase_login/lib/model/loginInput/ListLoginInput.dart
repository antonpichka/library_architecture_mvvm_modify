import 'package:library_arch_mvvm_modify_firebase_login/model/loginInput/LoginInput.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/base_list_model.dart';

class ListLoginInput
    extends BaseListModel<LoginInput>
{
  ListLoginInput.success(List<LoginInput>? list) : super.success(list);
  ListLoginInput.exception(BaseException exception) : super.exception(exception);
}