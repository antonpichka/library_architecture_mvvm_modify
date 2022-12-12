import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';

abstract class UserQNamedServiceViewModel<T extends User,Y extends ListUser,DataSource extends Object>
    extends BaseModelQNamedServiceViewModel<T,Y,DataSource>
{
  UserQNamedServiceViewModel.thereIsDataSource(super.dataSource,super.iCloneModelForSuccess,super.iCloneStreamModelForSuccess) : super.thereIsDataSource();
  UserQNamedServiceViewModel.noDataSource(super.list,super.iCloneModelForSuccess,super.iCloneStreamModelForSuccess) : super.noDataSource();

  DefaultStreamModel<T,Y>? getDefaultStreamUser(
      EnumBaseModelAndBaseListModelVM operation)
  {
    return getIStreamModel(operation) as DefaultStreamModel<T,Y>?;
  }
}