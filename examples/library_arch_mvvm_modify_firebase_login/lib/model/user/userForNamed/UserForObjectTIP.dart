import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';

class UserForObjectTIP
    implements IModelForNamedTIP<User,Object>
{
  @override
  User? getModelForNamedTIP(Object? parameter) {
    if(parameter == null) {
      return null;
    }
    final user = parameter as User;
    return User.success(
        user.getParameterUniqueId,
        user.getParameterEmail,
        user.getParameterName,
        user.getParameterPhoto);
  }
}