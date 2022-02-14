import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_using_function_view_model/base_fvufvm_specifically_no_tip_no_ns.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/function_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_there_is_parameter_fvm_and_insert_or_update_or_delete_list_model_to_database_there_is_parameter_fvm/get_list_model_from_local_database_there_is_parameter_fvm_and_insert_list_model_to_local_database_there_is_parameter_fvm.dart';

class GetListModelFromLocalDatabaseThereIsParameterFVUFVMAndInsertListModelToLocalDatabaseThereIsParameterFVUFVM
    extends BaseFVUFVMSpecificallyNoTIPNoNS<GetListModelFromLocalDatabaseThereIsParameterFVMAndInsertListModelToLocalDatabaseThereIsParameterFVM>
{
  @override
  Future<void> mainMethod(GetListModelFromLocalDatabaseThereIsParameterFVMAndInsertListModelToLocalDatabaseThereIsParameterFVM  mainMethod, Function functionForResultSuccess, Function(DomainException p1) functionForResultDomainException, Function(LocalException p1) functionForResultLocalException, Function(NetworkException p1) functionForResultNetworkException) async
  {
    await FunctionViewModel
        .getListModelFromLocalDatabaseThereIsParameterFVMAndInsertListModelToLocalDatabaseThereIsParameterFVM(
        mainMethod,
        functionForResultSuccess,
        functionForResultDomainException,
        functionForResultLocalException,
        functionForResultNetworkException
    );
  }
}
