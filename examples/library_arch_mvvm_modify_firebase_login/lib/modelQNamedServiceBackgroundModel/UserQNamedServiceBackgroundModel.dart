import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_background_model/base_model_q_named_service_background_model.dart';

abstract class UserQNamedServiceBackgroundModel<DataSource extends Object>
    extends BaseModelQNamedServiceBackgroundModel<User,ListUser,DataSource>
{
  UserQNamedServiceBackgroundModel.thereIsDataSource(DataSource dataSource) : super.thereIsDataSource(dataSource);

  @override
  User? iCloneModelForSuccess(
      User? model)
  {
    return User.success(
        model?.getParameterUniqueId,
        model?.email,
        model?.name,
        model?.photo);
  }

  @override
  ListUser? iCloneListModelForSuccess(
      ListUser? listModel)
  {
    return ListUser.success(listModel?.list);
  }
}