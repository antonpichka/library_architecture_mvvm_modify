import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/ListEmailInput.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

abstract class EmailInputQNamedServiceViewModel<DataSource extends Object>
    extends BaseModelQNamedServiceViewModel<EmailInput,ListEmailInput,DataSource>
{
  EmailInputQNamedServiceViewModel.thereIsDataSource(DataSource dataSource) : super.thereIsDataSource(dataSource);
  EmailInputQNamedServiceViewModel.noDataSource(List<EnumBaseModelAndBaseListModelVM> list) : super.noDataSource(list);

  @override
  EmailInput? cloneModelForSuccess(
      EmailInput? model)
  {
    return EmailInput.success(
        model?.email);
  }

  @override
  ListEmailInput? cloneListModelForSuccess(
      ListEmailInput? listModel)
  {
    return ListEmailInput.success(listModel?.list);
  }

  @override
  IStreamModel<EmailInput, ListEmailInput> initIStreamModelForSuccess() {
    return DefaultStreamModel<EmailInput,ListEmailInput>(EmailInput.getEmailInputForSuccess,ListEmailInput.success([]));
  }
}