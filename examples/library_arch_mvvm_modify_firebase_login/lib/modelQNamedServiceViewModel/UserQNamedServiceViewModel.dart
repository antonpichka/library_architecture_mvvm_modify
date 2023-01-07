import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_for_i_stream_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';

abstract class UserQNamedServiceViewModel<T extends User,Y extends ListUser<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  UserQNamedServiceViewModel.thereIsDataSource(super.iCloneStreamModelForSuccess) : super.thereIsDataSource();
  UserQNamedServiceViewModel.noDataSource(super.list,super.iCloneStreamModelForSuccess) : super.noDataSource();

  DefaultStreamModel<T,Y>? getDefaultStreamUser(EnumForIStreamModelVM operation) {
    return getIStreamModel(operation) as DefaultStreamModel<T,Y>?;
  }
}