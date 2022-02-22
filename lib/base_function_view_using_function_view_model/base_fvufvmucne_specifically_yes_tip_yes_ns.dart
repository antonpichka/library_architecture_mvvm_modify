import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_using_function_view_model/base_fvufvmucne_specifically_no_tip_yes_ns.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_vm.dart';

abstract class BaseFVUFVMUCNESpecificallyYesTIPYesNS<T,Y>
    extends BaseFVUFVMUCNESpecificallyNoTIPYesNS<T>
{
  void setObject(BaseViewModel baseViewModel, Y object);

  Future<void> setObjectAndMainMethod(
      T paramMainMethod,
      BaseViewModel baseViewModel,
      Y object,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    setObject(baseViewModel, object);
    await mainMethod(
        paramMainMethod,
        functionForResultSuccess: functionForResultSuccess,
        functionForResultDomainException: functionForResultDomainException,
        functionForResultLocalException: functionForResultLocalException,
        functionForResultNetworkException: functionForResultNetworkException
    );
  }

  Future<void> setObjectAndMainMethodAndNotifyStream(
      T paramMainMethod,
      BaseViewModel baseViewModel,
      Y object,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    setObject(baseViewModel, object);
    await mainMethod(
        paramMainMethod,
        functionForResultSuccess: functionForResultSuccess,
        functionForResultDomainException: functionForResultDomainException,
        functionForResultLocalException: functionForResultLocalException,
        functionForResultNetworkException: functionForResultNetworkException
    );
    notifyStream(baseViewModel);
  }
  
  @protected
  void beforeCodeIsCheckTypeBaseModelDomainAndAlsoUsedFunctionSetModelDomain(
      BaseViewModel baseViewModel,
      BaseModelDomain baseModelDomain,
      EnumBaseModelDomainVM operation,
     )
  {
    if(baseViewModel.getTypeBaseModelDomain != baseModelDomain.runtimeType) {
      throw Exception("viewModel type baseModelDomain | not equals | type baseModelDomain. ViewModelType: ${baseViewModel.runtimeType}");
    }

    baseViewModel.setModel(
        baseModelDomain,
        operation
    );
  }
}
