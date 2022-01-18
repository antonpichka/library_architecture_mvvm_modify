import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_using_function_view_model/base_fvufvm_specifically_yes_tip_yes_ns.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/function_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_local_database_there_is_parameter_and_update_model_to_list_model_domain_for_local_database_fvm.dart';

class UpdateModelToLocalDatabaseThereIsParameterAndUpdateModelToListModelDomainForLocalDatabaseFVUFVM
    extends BaseFVUFVMSpecificallyYesTIPYesNS<UpdateModelToLocalDatabaseThereIsParameterAndUpdateModelToListModelDomainForLocalDatabaseFVM,BaseModelDomain>
{
  @override
  Future<void> mainMethod(UpdateModelToLocalDatabaseThereIsParameterAndUpdateModelToListModelDomainForLocalDatabaseFVM mainMethod, Function functionForResultSuccess, Function(DomainException p1) functionForResultDomainException, Function(LocalException p1) functionForResultLocalException, Function(NetworkException p1) functionForResultNetworkException) async {
    await FunctionViewModel.updateModelToLocalDatabaseThereIsParameterAndUpdateModelToListModelDomainForLocalDatabaseFVM(
        mainMethod,
        functionForResultSuccess,
        functionForResultDomainException,
        functionForResultLocalException,
        functionForResultNetworkException
    );
  }

  @override
  void notifyStream(BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel) {
    baseViewModel.notifyStreamModelDomain(EnumBaseModelDomainObjectOperationViewModel.updateModelToLocalDatabaseThereIsParameter);
  }

  @override
  void setObject(BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel, BaseModelDomain object) {
    beforeCodeIsCheckTypeBaseModelDomainAndAlsoUsedFunctionSetModelDomain(baseViewModel,
        object,
        EnumBaseModelDomainObjectOperationViewModel.updateModelToLocalDatabaseThereIsParameter);
  }
}