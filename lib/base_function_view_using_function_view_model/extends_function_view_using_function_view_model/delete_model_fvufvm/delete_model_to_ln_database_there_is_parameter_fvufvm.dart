import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_using_function_view_model/base_fvufvm_specifically_yes_tip_yes_ns.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/function_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_ln_database_there_is_parameter_fvm.dart';

class DeleteModelToLNDatabaseThereIsParameterFVUFVM
    extends BaseFVUFVMSpecificallyYesTIPYesNS<DeleteModelToLNDatabaseThereIsParameterFVM,BaseModelDomain>
{
  @override
  Future<void> mainMethod(DeleteModelToLNDatabaseThereIsParameterFVM mainMethod, Function functionForResultSuccess, Function(DomainException p1) functionForResultDomainException, Function(LocalException p1) functionForResultLocalException, Function(NetworkException p1) functionForResultNetworkException) async {
    await FunctionViewModel.deleteModelToLNDatabaseThereIsParameterFVM(
        mainMethod,
        functionForResultSuccess,
        functionForResultDomainException,
        functionForResultLocalException,
        functionForResultNetworkException
    );
  }

  @override
  void notifyStream(BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel) {
    baseViewModel.notifyStreamModelDomain(EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter);
    baseViewModel.notifyStreamModelDomain(EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter);
  }

  @override
  void setObject(BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel, BaseModelDomain object) {
    beforeCodeIsCheckTypeBaseModelDomainAndAlsoUsedFunctionSetModelDomain(baseViewModel,
        object,
        EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter);
    beforeCodeIsCheckTypeBaseModelDomainAndAlsoUsedFunctionSetModelDomain(baseViewModel,
        object,
        EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter);
  }

}