import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_using_function_view_model/base_function_view_using_function_view_model_using_callback_network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

abstract class BaseFVUFVMUCNESpecificallyNoTIPYesNS<T>
    extends BaseFunctionViewUsingFunctionViewModelUsingCallbackNetworkException<T>
{
  void notifyStream(BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel);

  Future<void> mainMethodAndNotifyStream(
      T paramMainMethod,
      BaseViewModel baseViewModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException})
  async {
   await mainMethod(
        paramMainMethod,
        functionForResultSuccess: functionForResultSuccess,
        functionForResultDomainException: functionForResultDomainException,
        functionForResultLocalException: functionForResultLocalException,
        functionForResultNetworkException: functionForResultNetworkException
    );
    notifyStream(baseViewModel);
  }
}