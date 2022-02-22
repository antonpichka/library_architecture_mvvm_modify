import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_using_function_view_model/base_fvufvmucne_specifically_yes_tip_yes_ns.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/function_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_list_model_fvm/update_list_model_to_network_database_there_is_parameter_and_update_list_model_to_list_model_domain_for_network_database_fvm.dart';

class UpdateListModelToNetworkDatabaseThereIsParameterAndUpdateListModelToListModelDomainForNetworkDatabaseFVUFVMUCNE
    extends BaseFVUFVMUCNESpecificallyYesTIPYesNS<UpdateListModelToNetworkDatabaseThereIsParameterAndUpdateListModelToListModelDomainForNetworkDatabaseFVM,List<BaseModelDomain>>
{
  @override
  Future<void> mainMethod(UpdateListModelToNetworkDatabaseThereIsParameterAndUpdateListModelToListModelDomainForNetworkDatabaseFVM mainMethod,
  {Function functionForResultSuccess, Function(DomainException p1) functionForResultDomainException, Function(LocalException p1) functionForResultLocalException, Function(NetworkException p1) functionForResultNetworkException})
  async {
    await FunctionViewModel.updateListModelToNetworkDatabaseThereIsParameterAndUpdateListModelToListModelDomainForNetworkDatabaseFVM(
        mainMethod,
        functionForResultSuccess: functionForResultSuccess,
        functionForResultDomainException: functionForResultDomainException,
        functionForResultLocalException: functionForResultLocalException,
        functionForResultNetworkException: functionForResultNetworkException
    );
  }

  @override
  void notifyStream(BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel) {
    baseViewModel.notifyStreamListModel(EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter);
  }

  @override
  void setObject(BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel, List<BaseModelDomain> object) {
    baseViewModel.setListModel(object, EnumBaseListModelDomainVM.updateListModelToNetworkDatabaseThereIsParameter);
  }

}