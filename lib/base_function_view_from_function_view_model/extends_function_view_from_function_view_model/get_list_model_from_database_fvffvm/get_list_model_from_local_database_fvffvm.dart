import 'package:library_architecture_mvvm_modify/base_function_view_from_function_view_model/base_function_view_from_function_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/function_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_fvm/get_list_model_from_local_database_fvm.dart';

class GetListModelFromLocalDatabaseFVFFVM extends BaseFunctionViewFromFunctionViewModel {
  Future<void> callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseFVM getListModelFromLocalDatabaseFVM,
      Function functionForResultSuccess,
      Function(String) functionForResultError
      ) async
  {
    String response = await FunctionViewModel
        .callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
        getListModelFromLocalDatabaseFVM
    );
    afterCodeIsCheckResponse(
        response,
        functionForResultSuccess,
        functionForResultError
    );
  }

  Future<void> callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVMAndNotifyStreamListModelDomainLocalDatabase(
      GetListModelFromLocalDatabaseFVM getListModelFromLocalDatabaseFVM,
      BaseViewModel baseViewModel,
      Function functionForResultSuccess,
      Function(String) functionForResultError
      ) async
  {
    String response = await FunctionViewModel
        .callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
        getListModelFromLocalDatabaseFVM
    );
    afterCodeIsCheckResponseAndNotifyStreamListModelDomainLocalDatabase(
        response,
        baseViewModel,
        functionForResultSuccess,
        functionForResultError
    );
  }
}