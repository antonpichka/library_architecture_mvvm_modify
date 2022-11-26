import 'package:library_arch_mvvm_modify_firebase_login/model/loginInput/ListLoginInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/loginInput/LoginInput.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_named_vm/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream_base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream_model.dart';

abstract class LoginInputQNamedServiceViewModel
    extends BaseModelQNamedServiceViewModel<LoginInput,ListLoginInput>
{
  LoginInputQNamedServiceViewModel.thereIsDataSource(Object dataSource) : super.thereIsDataSource(dataSource);
  LoginInputQNamedServiceViewModel.noDataSource(List<EnumBaseModelAndBaseListModelVM> list) : super.noDataSource(list);

  @override
  LoginInput cloneModelForSuccess(
      LoginInput model)
  {
    return LoginInput.success(
        model.email,
        model.password,
        model.status);
  }

  @override
  ListLoginInput cloneListModelForSuccess(
      ListLoginInput listModel)
  {
    return ListLoginInput.success(listModel.list);
  }

  @override
  IStreamBaseTypeParameter initIStreamBaseTypeParameter() {
    return DefaultStreamBaseTypeParameter();
  }

  @override
  IStreamModel<LoginInput, ListLoginInput> initIStreamModelForSuccess() {
    return DefaultStreamModel<LoginInput, ListLoginInput>(LoginInput.getLoginInputForSuccess,ListLoginInput.success([]));
  }
}