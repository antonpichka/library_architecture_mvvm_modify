import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_background_model/base_model_q_named_service_background_model.dart';

abstract class UserQNamedServiceBackgroundModel
    extends BaseModelQNamedServiceBackgroundModel<User,ListUser>
{
  UserQNamedServiceBackgroundModel.thereIsDataSource(Object dataSource) : super.thereIsDataSource(dataSource);

  @override
  User cloneModelForSuccess(User model) {
    return User.success(
        model.uniqueId,
        model.email,
        model.name,
        model.photo);
  }

  @override
  ListUser cloneListModelForSuccess(ListUser listModel) {
    return ListUser.success(listModel.listModel);
  }
}