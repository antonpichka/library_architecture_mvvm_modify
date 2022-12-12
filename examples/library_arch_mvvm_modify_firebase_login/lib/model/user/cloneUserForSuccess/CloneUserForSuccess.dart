import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_model_for_success/i_clone_model_for_success.dart';

class CloneUserForSuccess
    implements ICloneModelForSuccess<User,ListUser>
{
  @override
  User? cloneModelForSuccess(User? model) {
    return User.success(
        model?.getParameterUniqueId,
        model?.getParameterEmail,
        model?.getParameterName,
        model?.getParameterPhoto);
  }

  @override
  ListUser? cloneListModelForSuccess(ListUser? listModel) {
    return ListUser.success(listModel?.getParameterList);
  }
}