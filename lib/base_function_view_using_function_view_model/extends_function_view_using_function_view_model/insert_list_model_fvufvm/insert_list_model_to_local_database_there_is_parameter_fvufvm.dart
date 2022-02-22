import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_using_function_view_model/base_fvufvm_specifically_yes_tip_yes_ns.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/function_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_list_model_fvm/insert_list_model_to_local_database_there_is_parameter_fvm.dart';

class InsertListModelToLocalDatabaseThereIsParameterFVUFVM
    extends BaseFVUFVMSpecificallyYesTIPYesNS<InsertListModelToLocalDatabaseThereIsParameterFVM,List<BaseModelDomain>>
{
  @override
  Future<void> mainMethod(InsertListModelToLocalDatabaseThereIsParameterFVM mainMethod,
  {Function functionForResultSuccess, Function(DomainException p1) functionForResultDomainException, Function(LocalException p1) functionForResultLocalException})
  async {
    await FunctionViewModel.insertListModelToLocalDatabaseThereIsParameterFVM(
        mainMethod,
        functionForResultSuccess: functionForResultSuccess,
        functionForResultDomainException: functionForResultDomainException,
        functionForResultLocalException: functionForResultLocalException,
    );
  }

  @override
  void notifyStream(BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel) {
    baseViewModel.notifyStreamListModel(EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter);
  }

  @override
  void setObject(BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel, List<BaseModelDomain> object) {
    baseViewModel.setListModel(object, EnumBaseListModelDomainVM.insertListModelToLocalDatabaseThereIsParameter);
  }

}