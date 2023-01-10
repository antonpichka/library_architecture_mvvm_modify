import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';

class UserForSuccessWhereParametersEqualsStringNullNP
    implements IModelForNamedNP<User>
{
  @override
  User getModelForNamedNP() {
    return User.getUserForSuccessWhereParametersEqualsNull;
  }
}