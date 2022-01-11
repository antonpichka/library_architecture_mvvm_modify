import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_ln_database_there_is_parameter_and_delete_model_to_list_model_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_ln_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_list_model_domain_for_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_local_database_there_is_parameter_and_delete_model_to_list_model_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_local_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_list_model_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_network_database_there_is_parameter_and_delete_model_to_network_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_network_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_network_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_fvm/get_list_model_from_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_fvm/get_list_model_from_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_fvm/get_list_model_from_network_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_there_is_parameter_fvm/get_list_model_from_ln_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_there_is_parameter_fvm/get_list_model_from_local_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_there_is_parameter_fvm/get_list_model_from_network_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_model_from_database_there_is_parameter_fvm/get_model_from_ln_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_model_from_database_there_is_parameter_fvm/get_model_from_local_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_model_from_database_there_is_parameter_fvm/get_model_from_network_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_ln_database_there_is_parameter_and_insert_model_to_ln_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_ln_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_ln_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_local_database_there_is_parameter_and_insert_model_to_local_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_local_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_local_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_network_database_there_is_parameter_and_insert_model_to_network_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_network_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_network_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/model_local_database_for_one_entry_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_ln_database_there_is_parameter_and_update_model_to_ln_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_ln_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_ln_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_local_database_there_is_parameter_and_update_model_to_local_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_local_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_local_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_network_database_there_is_parameter_and_update_model_to_network_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_network_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_network_list_model_fvm.dart';

/* USING TO MANAGE_VIEW_MODEL CLASS */
class FunctionViewModel {

  static Future<String> callToMethodGetModelFromLocalDatabaseForOneEntryAndUseTheSettersFVM(
      ModelLocalDatabaseForOneEntryFVM spModelFVM) async
  {
    return _codeNetworkDatabaseOrLocalDatabase(
        spModelFVM.callToMethodGetModelFromLocalDatabaseForOneEntryAndUseTheSettersFVM()
    );
  }

  static Future<String> insertModelToLocalDatabaseForOneEntryThereIsParameterFVM(
      ModelLocalDatabaseForOneEntryFVM spModelFVM) async
  {
    return _codeNetworkDatabaseOrLocalDatabase(
        spModelFVM.insertModelToLocalDatabaseForOneEntryThereIsParameterFVM()
    );
  }

  static Future<String> deleteModelToLocalDatabaseForOneEntryFVM(
      ModelLocalDatabaseForOneEntryFVM spModelFVM) async
  {
    return _codeNetworkDatabaseOrLocalDatabase(
        spModelFVM.deleteModelToLocalDatabaseForOneEntryFVM()
    );
  }

  static Future<String> insertModelToLocalDatabaseThereIsParameterFVM(
      InsertModelToLocalDatabaseThereIsParameterFVM insertModel)
  async {
    // Insert Model FVM
    return _codeNetworkDatabaseOrLocalDatabase(
        insertModel.insertModelToLocalDatabaseThereIsParameterFVM(),
    );
  }

  static bool insertModelToLocalListModelFVM(
      InsertModelToLocalListModelFVM insertModel) {
    // Insert Model FVM
    return _codeNetworkListModelOrLocalListModel(
      insertModel.insertModelToLocalListModelFVM()
    );
  }
  
  static Future<String> updateModelToLocalDatabaseThereIsParameterFVM(
      UpdateModelToLocalDatabaseThereIsParameterFVM updateModel)
  async {
    // Update Model FVM
    return _codeNetworkDatabaseOrLocalDatabase(
      updateModel.updateModelToLocalDatabaseThereIsParameterFVM(),
    );
  }

  static bool updateModelToLocalListModelFVM(
      UpdateModelToLocalListModelFVM updateModel) {
    // Update Model FVM
    return _codeNetworkListModelOrLocalListModel(
        updateModel.updateModelToLocalListModelFVM()
    );
  }

  static Future<String> deleteModelToLocalDatabaseThereIsParameterFVM(
      DeleteModelToLocalDatabaseThereIsParameterFVM deleteModel)
  async {
    // Delete Model FVM
    return _codeNetworkDatabaseOrLocalDatabase(
      deleteModel.deleteModelToLocalDatabaseThereIsParameterFVM(),
    );
  }

  static bool deleteModelToLocalListModelFVM(
      DeleteModelToListModelLocalDatabaseFVM deleteModel) {
    // Delete Model FVM
    return _codeNetworkListModelOrLocalListModel(
        deleteModel.deleteModelToLocalListModelFVM()
    );
  }

  static Future<String> callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseFVM getListModel)
  async {
    return _codeNetworkDatabaseOrLocalDatabase(
      getListModel.callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(),
    );
  }

  static Future<String> callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseThereIsParameterFVM getListModel)
  async {
    return _codeNetworkDatabaseOrLocalDatabase(
      getListModel.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(),
    );
  }

  static Future<String> callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      GetModelFromLocalDatabaseThereIsParameterFVM getModel)
  async {
    return _codeNetworkDatabaseOrLocalDatabase(
      getModel.callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(),
    );
  }

  static Future<String> insertModelToNetworkDatabaseThereIsParameterFVM(
      InsertModelToNetworkDatabaseThereIsParameterFVM insertModel)
  async {
    // Insert Model FVM
    return _codeNetworkDatabaseOrLocalDatabase(
      insertModel.insertModelToNetworkDatabaseThereIsParameterFVM(),
    );
  }

  static bool insertModelToNetworkListModelFVM(
      InsertModelToNetworkListModelFVM insertModel) {
    // Insert Model FVM
    return _codeNetworkListModelOrLocalListModel(
        insertModel.insertModelToNetworkListModelFVM()
    );
  }

  static Future<String> updateModelToNetworkDatabaseThereIsParameterFVM(
      UpdateModelToNetworkDatabaseThereIsParameterFVM updateModel)
  async {
    // Update Model FVM
    return _codeNetworkDatabaseOrLocalDatabase(
      updateModel.updateModelToNetworkDatabaseThereIsParameterFVM(),
    );
  }

  static bool updateModelToNetworkListModelFVM(
      UpdateModelToNetworkListModelFVM updateModel) {
    // Update Model FVM
    return _codeNetworkListModelOrLocalListModel(
        updateModel.updateModelToNetworkListModelFVM()
    );
  }

  static Future<String> deleteModelToNetworkDatabaseThereIsParameterFVM(
      DeleteModelToNetworkDatabaseThereIsParameterFVM deleteModel)
  async {
    // Delete Model FVM
    return _codeNetworkDatabaseOrLocalDatabase(
      deleteModel.deleteModelToNetworkDatabaseThereIsParameterFVM(),
    );
  }

  static bool deleteModelToNetworkListModelFVM(
      DeleteModelToNetworkListModelFVM deleteModel) {
    // Delete Model FVM
    return _codeNetworkListModelOrLocalListModel(
        deleteModel.deleteModelToNetworkListModelFVM()
    );
  }

  static Future<String> callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(
      GetListModelFromNetworkDatabaseFVM getListModel)
  async {
    return _codeNetworkDatabaseOrLocalDatabase(
      getListModel.callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(),
    );
  }

  static Future<String> callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromNetworkDatabaseThereIsParameterFVM getListModel)
  async {
    return _codeNetworkDatabaseOrLocalDatabase(
      getListModel.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(),
    );
  }

  static Future<String> callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
      GetModelFromNetworkDatabaseThereIsParameterFVM getModel)
  async {
    return _codeNetworkDatabaseOrLocalDatabase(
      getModel.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(),
    );
  }
  
  static Future<String> insertModelToLNDatabaseThereIsParameterFVM(
      InsertModelToLNDatabaseThereIsParameterFVM insertModel)
  async {
    // Insert Model FVM
    return _codeNetworkDatabaseAndLocalDatabase(
      insertModel.insertModelToNetworkDatabaseThereIsParameterFVM(),
      insertModel.insertModelToLocalDatabaseThereIsParameterFVM(),
    );
  }

  static bool insertModelToLNListModelFVM(
      InsertModelToLNListModelFVM insertModel) {
    // Insert Model FVM
    return _codeNetworkListModelAndLocalListModel(
      insertModel.insertModelToNetworkListModelFVM(),
      insertModel.insertModelToLocalListModelFVM(),
    );
  }

  static Future<String> updateModelToLNDatabaseThereIsParameterFVM(
      UpdateModelToLNDatabaseThereIsParameterFVM updateModel)
  async {
    // Update Model FVM
    return _codeNetworkDatabaseAndLocalDatabase(
      updateModel.updateModelToNetworkDatabaseThereIsParameterFVM(),
      updateModel.updateModelToLocalDatabaseThereIsParameterFVM(),
    );
  }

  static bool updateModelToLNListModelFVM(
      UpdateModelToLNListModelFVM updateModel) {
    // Update Model FVM
    return _codeNetworkListModelAndLocalListModel(
      updateModel.updateModelToNetworkListModelFVM(),
      updateModel.updateModelToLocalListModelFVM(),
    );
  }

  static Future<String> deleteModelToLNDatabaseThereIsParameterFVM(
      DeleteModelToLNDatabaseThereIsParameterFVM deleteModel)
  async {
    // Delete Model FVM
    return _codeNetworkDatabaseAndLocalDatabase(
      deleteModel.deleteModelToNetworkDatabaseThereIsParameterFVM(),
      deleteModel.deleteModelToLocalDatabaseThereIsParameterFVM(),
    );
  }

  static bool deleteModelToLNListModelFVM(
      DeleteModelToListModelDomainForLNDatabaseFVM deleteModel) {
    // Delete Model FVM
    return _codeNetworkListModelAndLocalListModel(
      deleteModel.deleteModelToNetworkListModelFVM(),
      deleteModel.deleteModelToLocalListModelFVM(),
    );
  }

  static Future<String> callToMethodGetListModelFromLNDatabaseAndUseTheSettersFVM(
      GetListModelFromLNDatabaseFVM getListModel)
  async {
    return _codeNetworkDatabaseAndLocalDatabase(
      getListModel.callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(),
      getListModel.callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(),
    );
  }

  static Future<String> callToMethodGetListModelFromLNDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromLNDatabaseThereIsParameterFVM getListModel)
  async {
    return _codeNetworkDatabaseAndLocalDatabase(
      getListModel.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(),
      getListModel.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(),
    );
  }
  
  static Future<String> callToMethodGetModelFromLNDatabaseThereIsParameterAndUseTheSettersFVM(
      GetModelFromLNDatabaseThereIsParameterFVM getModel)
  async {
    return _codeNetworkDatabaseAndLocalDatabase(
      getModel.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(),
      getModel.callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(),
    );
  }

  static Future<String> insertModelToLocalDatabaseThereIsParameterAndInsertModelToLocalListModelFVM(
      InsertModelToLocalDatabaseThereIsParameterAndInsertModelToLocalListModelFVM insertModel)
  async {
    // Insert Model FVM
    return _codeNetworkDatabaseOrLocalDatabaseAndListModel(
        insertModel.insertModelToLocalDatabaseThereIsParameterFVM(),
        insertModel.insertModelToLocalListModelFVM
    );
  }

  static Future<String> updateModelToLocalDatabaseThereIsParameterAndUpdateModelToLocalListModelFVM(
      UpdateModelToLocalDatabaseThereIsParameterAndUpdateModelToLocalListModelFVM updateModel)
  async {
    // Update Model FVM
    return _codeNetworkDatabaseOrLocalDatabaseAndListModel(
        updateModel.updateModelToLocalDatabaseThereIsParameterFVM(),
        updateModel.updateModelToLocalListModelFVM
    );
  }

  static Future<String> deleteModelToLocalDatabaseThereIsParameterAndDeleteModelToLocalListModelFVM(
      DeleteModelToLocalDatabaseThereIsParameterAndDeleteModelToListModelLocalDatabaseFVM deleteModel)
  async {
    // Delete Model FVM
    return _codeNetworkDatabaseOrLocalDatabaseAndListModel(
        deleteModel.deleteModelToLocalDatabaseThereIsParameterFVM(),
        deleteModel.deleteModelToLocalListModelFVM
    );
  }

  static Future<String> insertModelToNetworkDatabaseThereIsParameterAndInsertModelToNetworkListModelFVM(
      InsertModelToNetworkDatabaseThereIsParameterAndInsertModelToNetworkListModelFVM insertModel)
  async {
    // Insert Model FVM
    return _codeNetworkDatabaseOrLocalDatabaseAndListModel(
        insertModel.insertModelToNetworkDatabaseThereIsParameterFVM(),
        insertModel.insertModelToNetworkListModelFVM
    );
  }

  static Future<String> updateModelToNetworkDatabaseThereIsParameterAndUpdateModelToNetworkListModelFVM(
      UpdateModelToNetworkDatabaseThereIsParameterAndUpdateModelToNetworkListModelFVM updateModel)
  async {
    // Update Model FVM
    return _codeNetworkDatabaseOrLocalDatabaseAndListModel(
        updateModel.updateModelToNetworkDatabaseThereIsParameterFVM(),
        updateModel.updateModelToNetworkListModelFVM);
  }

  static Future<String> deleteModelToNetworkDatabaseThereIsParameterAndDeleteModelToNetworkListModelFVM(
      DeleteModelToNetworkDatabaseThereIsParameterAndDeleteModelToNetworkListModelFVM deleteModel)
  async {
    // Delete Model FVM
    return _codeNetworkDatabaseOrLocalDatabaseAndListModel(
        deleteModel.deleteModelToNetworkDatabaseThereIsParameterFVM(),
        deleteModel.deleteModelToNetworkListModelFVM
    );
  }

  static Future<String> insertModelToLNDatabaseThereIsParameterAndInsertModelToLNListModelFVM(
      InsertModelToLNDatabaseThereIsParameterAndInsertModelToLNListModelFVM  insertModel)
  async {
    // Insert Model FVM
    return _codeNetworkDatabaseAndLocalDatabaseAndListModel(
        insertModel.insertModelToNetworkDatabaseThereIsParameterFVM(),
        insertModel.insertModelToNetworkListModelFVM,
        insertModel.insertModelToLocalDatabaseThereIsParameterFVM(),
        insertModel.insertModelToLocalListModelFVM);
  }

  static Future<String> updateModelToLNDatabaseThereIsParameterAndUpdateModelToLNListModelFVM(
      UpdateModelToLNDatabaseThereIsParameterAndUpdateModelToLNListModelFVM updateModel)
  async {
    // Update Model FVM
    return _codeNetworkDatabaseAndLocalDatabaseAndListModel(
        updateModel.updateModelToNetworkDatabaseThereIsParameterFVM(),
        updateModel.updateModelToNetworkListModelFVM,
        updateModel.updateModelToLocalDatabaseThereIsParameterFVM(),
        updateModel.updateModelToLocalListModelFVM);
  }

  static Future<void> deleteModelToLNDatabaseThereIsParameterAndDeleteModelToLNListModelFVM(
      DeleteModelToLNDatabaseThereIsParameterAndDeleteModelToListModelLNDatabaseFVM deleteModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    // Delete Model FVM
     _codeNetworkDatabaseAndLocalDatabaseAndListModel(
         deleteModel.deleteModelToNetworkDatabaseThereIsParameterFVM(),
         deleteModel.deleteModelToNetworkListModelFVM,
         deleteModel.deleteModelToLocalDatabaseThereIsParameterFVM(),
         deleteModel.deleteModelToLocalListModelFVM,
         functionForResultSuccess,
         functionForResultDomainException,
         functionForResultLocalException,
         functionForResultNetworkException
     );
  }
  
  /* OTHER */

  static Future<void> _codeNetworkDatabaseOrLocalDatabase(
      Future<Response<String,BaseException>> function,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException
      ) async
  {
    var result = await function;
    if(result.isSuccessResponse) {
      functionForResultSuccess();
    } else {
      _choiceException(
          result.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
    }
  }

  static Future<void> _codeNetworkDatabaseAndLocalDatabase(
      Future<Response<String,BaseException>> networkFunction,
      Future<Response<String,BaseException>> localFunction,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException) async
  {
    var resultNetwork = await networkFunction;
    if(resultNetwork.isSuccessResponse) {
      var resultLocal = await localFunction;
      if(resultLocal.isSuccessResponse) {
        functionForResultSuccess();
      } else {
        _choiceException(
            resultLocal.getException,
            functionForResultDomainException,
            functionForResultLocalException,
            functionForResultNetworkException
        );
      }
    } else {
      _choiceException(
          resultNetwork.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
    }
  }

  static void _codeNetworkListModelOrLocalListModel(
      bool function,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  {
    if(function) {
      functionForResultSuccess();
    } else {
      return false;
    }
  }

  static void _codeNetworkListModelAndLocalListModel(
      bool functionNetwork,
      bool functionLocal,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  {
    if(functionNetwork) {
      if(functionLocal) {
        functionForResultSuccess();
      } else {
        return false;
      }
    } else {
      return false;
    }
  }


  static Future<void> _codeNetworkDatabaseOrLocalDatabaseAndListModel(
      Future<Response<String,BaseException>> functionOne,
      Function functionTwo,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException) async 
  {
    var result = await functionOne;
    if(result.isSuccessResponse) {
      functionTwo();
      functionForResultSuccess();
    } else {
      _choiceException(
          result.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
    }
  }

  static Future<void> _codeNetworkDatabaseAndLocalDatabaseAndListModel(
      Future<Response<String,BaseException>> networkFunctionOne,
      Function networkFunctionTwo,
      Future<Response<String,BaseException>> localFunctionOne,
      Function localFunctionTwo,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException) async
  {
    var resultNetwork = await networkFunctionOne;
    if(resultNetwork.isSuccessResponse) {
      networkFunctionTwo();
      var resultLocal = await localFunctionOne;
      if(resultLocal.isSuccessResponse) {
        localFunctionTwo();
        functionForResultSuccess();
      } else {
        _choiceException(
            resultLocal.getException,
            functionForResultDomainException,
            functionForResultLocalException,
            functionForResultNetworkException
        );
      }
    } else {
      _choiceException(
          resultNetwork.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
    }
  }

  static void _choiceException(
      BaseException baseException,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException
      )
  {
    if(baseException is DomainException) {
      functionForResultDomainException(baseException);
    } else if(baseException is LocalException) {
      functionForResultLocalException(baseException);
    } else if(baseException is NetworkException) {
      functionForResultNetworkException(baseException);
    }
  }

}