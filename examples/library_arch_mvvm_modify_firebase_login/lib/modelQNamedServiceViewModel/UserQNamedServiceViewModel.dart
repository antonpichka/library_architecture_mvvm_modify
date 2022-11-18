import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream_base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream_model.dart';

abstract class UserQNamedServiceViewModel
    extends BaseModelQNamedServiceViewModel<User,ListUser>
{
  UserQNamedServiceViewModel.thereIsDataSource(Object dataSource) : super.thereIsDataSource(dataSource);

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
    return ListUser.success(listModel.list);
  }

  @override
  IStreamBaseTypeParameter initIStreamBaseTypeParameter() {
    return DefaultStreamBaseTypeParameter();
  }

  @override
  IStreamModel<User, ListUser> initIStreamModelForSuccess() {
    return DefaultStreamModel(User.getUserForSuccess, ListUser.success([]));
  }
}