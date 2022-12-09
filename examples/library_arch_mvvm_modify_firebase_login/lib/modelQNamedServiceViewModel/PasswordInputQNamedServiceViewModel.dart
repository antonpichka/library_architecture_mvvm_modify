import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

abstract class PasswordInputQNamedServiceViewModel<DataSource extends Object>
    extends BaseModelQNamedServiceViewModel<PasswordInput,ListPasswordInput,DataSource>
{
  PasswordInputQNamedServiceViewModel.thereIsDataSource(DataSource dataSource) : super.thereIsDataSource(dataSource);
  PasswordInputQNamedServiceViewModel.noDataSource(List<EnumBaseModelAndBaseListModelVM> list) : super.noDataSource(list);

  @override
  PasswordInput? cloneModelForSuccess(
      PasswordInput? model)
  {
    return PasswordInput.success(
        model?.password);
  }

  @override
  ListPasswordInput? cloneListModelForSuccess(
      ListPasswordInput? listModel)
  {
    return ListPasswordInput.success(listModel?.list);
  }

  @override
  IStreamModel<PasswordInput, ListPasswordInput> initIStreamModelForSuccess() {
    return DefaultStreamModel<PasswordInput,ListPasswordInput>(PasswordInput.getPasswordInputForSuccess,ListPasswordInput.success([]));
  }
}