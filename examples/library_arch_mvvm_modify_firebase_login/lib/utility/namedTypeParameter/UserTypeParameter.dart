import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

class UserTypeParameter<T extends User>
    extends BaseTypeParameter<T>
{
  UserTypeParameter.success(super.parameter) : super.success();
}