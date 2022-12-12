import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';

abstract class PasswordInputQNamedServiceViewModel<T extends PasswordInput,Y extends ListPasswordInput,DataSource extends Object>
    extends BaseModelQNamedServiceViewModel<T,Y,DataSource>
{
  PasswordInputQNamedServiceViewModel.thereIsDataSource(super.dataSource,super.iCloneStreamModelForSuccess) : super.thereIsDataSource();
  PasswordInputQNamedServiceViewModel.noDataSource(super.list,super.iCloneStreamModelForSuccess) : super.noDataSource();
}