import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/ListEmailInput.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';

abstract class EmailInputQNamedServiceViewModel<T extends EmailInput,Y extends ListEmailInput<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
{
  EmailInputQNamedServiceViewModel.thereIsDataSource(super.iCloneStreamModelForSuccess) : super.thereIsDataSource();
  EmailInputQNamedServiceViewModel.noDataSource(super.list,super.iCloneStreamModelForSuccess) : super.noDataSource();
}