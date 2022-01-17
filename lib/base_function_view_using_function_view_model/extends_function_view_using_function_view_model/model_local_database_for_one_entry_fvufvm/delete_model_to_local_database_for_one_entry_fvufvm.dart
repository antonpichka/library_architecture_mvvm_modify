import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_using_function_view_model/base_fvufvm_specifically_no_tip_no_ns.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/function_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/model_local_database_for_one_entry_fvm.dart';

class DeleteModelToLocalDatabaseForOneEntryFVUFVM
    extends BaseFVUFVMSpecificallyNoTIPNoNS<ModelLocalDatabaseForOneEntryFVM>
{
  @override
  Future<void> mainMethod(ModelLocalDatabaseForOneEntryFVM mainMethod, Function functionForResultSuccess, Function(DomainException p1) functionForResultDomainException, Function(LocalException p1) functionForResultLocalException, Function(NetworkException p1) functionForResultNetworkException) async {
    await FunctionViewModel.deleteModelToLocalDatabaseForOneEntryFVM(
        mainMethod,
        functionForResultSuccess,
        functionForResultDomainException,
        functionForResultLocalException,
        functionForResultNetworkException
    );
  }
}