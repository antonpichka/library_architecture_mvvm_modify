import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';

class UserForLocalExceptionTIP
    implements IModelForNamedTIP<User,LocalException>
{
  @override
  User getModelForNamedTIP(LocalException parameter) {
    return User.exception(parameter);
  }
}