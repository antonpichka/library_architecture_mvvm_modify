import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_using_function_view_model/base_function_view_using_function_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/function_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_fvm/get_list_model_from_local_database_fvm.dart';

class GetListModelFromLocalDatabaseFVUFVM extends BaseFunctionViewUsingFunctionViewModel
{
  Future<void> callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseFVM getListModelFromLocalDatabaseFVM,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException
      ) async
  {
     await FunctionViewModel
        .callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
         getListModelFromLocalDatabaseFVM,
         functionForResultSuccess,
         functionForResultDomainException,
         functionForResultLocalException,
         functionForResultNetworkException
    );
  }

  Future<void> callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVMAndNotifyStreamListModelDomain(
      GetListModelFromLocalDatabaseFVM getListModelFromLocalDatabaseFVM,
      BaseViewModel baseViewModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException
      ) async
  {
    await FunctionViewModel
        .callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
        getListModelFromLocalDatabaseFVM,
        functionForResultSuccess,
        functionForResultDomainException,
        functionForResultLocalException,
        functionForResultNetworkException
    );
    baseViewModel.notifyStreamListModelDomain(
        EnumBaseListModelDomainObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter
    );
  }
}