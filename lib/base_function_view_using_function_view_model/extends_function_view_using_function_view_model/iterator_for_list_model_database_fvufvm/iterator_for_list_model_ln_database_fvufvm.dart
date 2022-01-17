import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_using_function_view_model/base_fvufvm_specifically_yes_tip_yes_ns.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/enum_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_iterator_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/function_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/iterator_for_list_model_database_fvm/iterator_for_list_model_ln_database_fvm.dart';

class IteratorForListModelLNDatabaseFVUFVM
    extends BaseFVUFVMSpecificallyYesTIPYesNS<IteratorForListModelLNDatabaseFVM,EnumTypeParameter>
{
  @override
  Future<void> mainMethod(IteratorForListModelLNDatabaseFVM mainMethod, Function functionForResultSuccess, Function(DomainException p1) functionForResultDomainException, Function(LocalException p1) functionForResultLocalException, Function(NetworkException p1) functionForResultNetworkException) async {
    await FunctionViewModel.callToMethodSetIteratorForListModelLNDatabaseAndSetListModelLNDatabaseUsingAnIteratorFVM(
        mainMethod,
        functionForResultSuccess,
        functionForResultDomainException,
        functionForResultLocalException,
        functionForResultNetworkException
    );
  }

  @override
  void notifyStream(BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel) {
    baseViewModel.notifyStreamListModelDomain(
        EnumBaseListModelDomainObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter);
    baseViewModel.notifyStreamListModelDomain(
        EnumBaseListModelDomainObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter);
  }

  @override
  void setObject(BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel, EnumTypeParameter object) {
    baseViewModel.setEnumTypeParameterForGetListLNDatabase(object,
        EnumTypeParameterObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameter);
    baseViewModel.setEnumTypeParameterForGetListLNDatabase(object,
        EnumTypeParameterObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameter);
  }

}