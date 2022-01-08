import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_local_database_there_is_parameter_and_delete_model_to_local_list_model_fvm.dart';

class ManageViewModel {

  // Example
  static Future<void> deleteModelToLocalDatabaseThereIsParameterAndDeleteModelToLocalListModelMVM(
      List<Enum> listOperations,
      BaseViewModel baseViewModelVariantOne,
      BaseViewModel baseViewModelVariantTwo,
      DeleteModelToLocalDatabaseThereIsParameterAndDeleteModelToLocalListModelFVM deleteModelVariantOne)
  async {
    baseViewModelVariantOne.notifyStreamModelDomain(listOperations[0]);

  }
}