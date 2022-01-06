import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_ln_database_there_is_parameter_and_delete_model_to_ln_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_ln_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_ln_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_local_database_there_is_parameter_and_delete_model_to_local_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_local_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_local_list_model_fvm.dart';
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
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/model_sp_fvm.dart';
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

  static Future<String> callToMethodGetModelFromSPAndUseTheSettersFVM(
      ModelSPFVM spModelFVM) async
  {
    return _codeNetworkOrLocalDatabase(
        spModelFVM.callToMethodGetModelFromSPAndUseTheSettersFVM()
    );
  }

  static Future<String> insertModelToSPThereIsParameterFVM(
      ModelSPFVM spModelFVM) async
  {
    return _codeNetworkOrLocalDatabase(
        spModelFVM.insertModelToSPThereIsParameterFVM()
    );
  }

  static Future<String> deleteModelToSPFVM(
      ModelSPFVM spModelFVM) async
  {
    return _codeNetworkOrLocalDatabase(
        spModelFVM.deleteModelToSPFVM()
    );
  }

  static Future<String> insertModelToLocalDatabaseThereIsParameterFVM(
      InsertModelToLocalDatabaseThereIsParameterFVM insertModel)
  async {
    // Insert Model FVM
    return _codeNetworkOrLocalDatabase(
        insertModel.insertModelToLocalDatabaseThereIsParameterFVM(),
    );
  }

  static bool insertModelToLocalListModelFVM(
      InsertModelToLocalListModelFVM insertModel) {
    // Insert Model FVM
    return _codeNetworkOrLocalListModel(
      insertModel.insertModelToLocalListModelFVM()
    );
  }
  
  static Future<String> updateModelToLocalDatabaseThereIsParameterFVM(
      UpdateModelToLocalDatabaseThereIsParameterFVM updateModel)
  async {
    // Update Model FVM
    return _codeNetworkOrLocalDatabase(
      updateModel.updateModelToLocalDatabaseThereIsParameterFVM(),
    );
  }

  static bool updateModelToLocalListModelFVM(
      UpdateModelToLocalListModelFVM updateModel) {
    // Update Model FVM
    return _codeNetworkOrLocalListModel(
        updateModel.updateModelToLocalListModelFVM()
    );
  }

  static Future<String> deleteModelToLocalDatabaseThereIsParameterFVM(
      DeleteModelToLocalDatabaseThereIsParameterFVM deleteModel)
  async {
    // Delete Model FVM
    return _codeNetworkOrLocalDatabase(
      deleteModel.deleteModelToLocalDatabaseThereIsParameterFVM(),
    );
  }

  static bool deleteModelToLocalListModelFVM(
      DeleteModelToLocalListModelFVM deleteModel) {
    // Delete Model FVM
    return _codeNetworkOrLocalListModel(
        deleteModel.deleteModelToLocalListModelFVM()
    );
  }

  static Future<String> callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseFVM getListModel)
  async {
    return _codeNetworkOrLocalDatabase(
      getListModel.callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(),
    );
  }

  static Future<String> callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseThereIsParameterFVM getListModel)
  async {
    return _codeNetworkOrLocalDatabase(
      getListModel.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(),
    );
  }

  static Future<String> callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      GetModelFromLocalDatabaseThereIsParameterFVM getModel)
  async {
    return _codeNetworkOrLocalDatabase(
      getModel.callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(),
    );
  }

  static Future<String> insertModelToNetworkDatabaseThereIsParameterFVM(
      InsertModelToNetworkDatabaseThereIsParameterFVM insertModel)
  async {
    // Insert Model FVM
    return _codeNetworkOrLocalDatabase(
      insertModel.insertModelToNetworkDatabaseThereIsParameterFVM(),
    );
  }

  static bool insertModelToNetworkListModelFVM(
      InsertModelToNetworkListModelFVM insertModel) {
    // Insert Model FVM
    return _codeNetworkOrLocalListModel(
        insertModel.insertModelToNetworkListModelFVM()
    );
  }

  static Future<String> updateModelToNetworkDatabaseThereIsParameterFVM(
      UpdateModelToNetworkDatabaseThereIsParameterFVM updateModel)
  async {
    // Update Model FVM
    return _codeNetworkOrLocalDatabase(
      updateModel.updateModelToNetworkDatabaseThereIsParameterFVM(),
    );
  }

  static bool updateModelToNetworkListModelFVM(
      UpdateModelToNetworkListModelFVM updateModel) {
    // Update Model FVM
    return _codeNetworkOrLocalListModel(
        updateModel.updateModelToNetworkListModelFVM()
    );
  }

  static Future<String> deleteModelToNetworkDatabaseThereIsParameterFVM(
      DeleteModelToNetworkDatabaseThereIsParameterFVM deleteModel)
  async {
    // Delete Model FVM
    return _codeNetworkOrLocalDatabase(
      deleteModel.deleteModelToNetworkDatabaseThereIsParameterFVM(),
    );
  }

  static bool deleteModelToNetworkListModelFVM(
      DeleteModelToNetworkListModelFVM deleteModel) {
    // Delete Model FVM
    return _codeNetworkOrLocalListModel(
        deleteModel.deleteModelToNetworkListModelFVM()
    );
  }

  static Future<String> callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(
      GetListModelFromNetworkDatabaseFVM getListModel)
  async {
    return _codeNetworkOrLocalDatabase(
      getListModel.callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(),
    );
  }

  static Future<String> callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromNetworkDatabaseThereIsParameterFVM getListModel)
  async {
    return _codeNetworkOrLocalDatabase(
      getListModel.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(),
    );
  }

  static Future<String> callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
      GetModelFromNetworkDatabaseThereIsParameterFVM getModel)
  async {
    return _codeNetworkOrLocalDatabase(
      getModel.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(),
    );
  }
  
  static Future<String> insertModelToLNDatabaseThereIsParameterFVM(
      InsertModelToLNDatabaseThereIsParameterFVM insertModel)
  async {
    // Insert Model FVM
    return _codeNetworkAndLocalDatabase(
      insertModel.insertModelToNetworkDatabaseThereIsParameterFVM(),
      insertModel.insertModelToLocalDatabaseThereIsParameterFVM(),
    );
  }

  static bool insertModelToLNListModelFVM(
      InsertModelToLNListModelFVM insertModel) {
    // Insert Model FVM
    return _codeNetworkAndLocalListModel(
      insertModel.insertModelToNetworkListModelFVM(),
      insertModel.insertModelToLocalListModelFVM(),
    );
  }

  static Future<String> updateModelToLNDatabaseThereIsParameterFVM(
      UpdateModelToLNDatabaseThereIsParameterFVM updateModel)
  async {
    // Update Model FVM
    return _codeNetworkAndLocalDatabase(
      updateModel.updateModelToNetworkDatabaseThereIsParameterFVM(),
      updateModel.updateModelToLocalDatabaseThereIsParameterFVM(),
    );
  }

  static bool updateModelToLNListModelFVM(
      UpdateModelToLNListModelFVM updateModel) {
    // Update Model FVM
    return _codeNetworkAndLocalListModel(
      updateModel.updateModelToNetworkListModelFVM(),
      updateModel.updateModelToLocalListModelFVM(),
    );
  }

  static Future<String> deleteModelToLNDatabaseThereIsParameterFVM(
      DeleteModelToLNDatabaseThereIsParameterFVM deleteModel)
  async {
    // Delete Model FVM
    return _codeNetworkAndLocalDatabase(
      deleteModel.deleteModelToNetworkDatabaseThereIsParameterFVM(),
      deleteModel.deleteModelToLocalDatabaseThereIsParameterFVM(),
    );
  }

  static bool deleteModelToLNListModelFVM(
      DeleteModelToLNListModelFVM deleteModel) {
    // Delete Model FVM
    return _codeNetworkAndLocalListModel(
      deleteModel.deleteModelToNetworkListModelFVM(),
      deleteModel.deleteModelToLocalListModelFVM(),
    );
  }

  static Future<String> callToMethodGetListModelFromLNDatabaseAndUseTheSettersFVM(
      GetListModelFromLNDatabaseFVM getListModel)
  async {
    return _codeNetworkAndLocalDatabase(
      getListModel.callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(),
      getListModel.callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(),
    );
  }

  static Future<String> callToMethodGetListModelFromLNDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromLNDatabaseThereIsParameterFVM getListModel)
  async {
    return _codeNetworkAndLocalDatabase(
      getListModel.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(),
      getListModel.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(),
    );
  }
  
  static Future<String> callToMethodGetModelFromLNDatabaseThereIsParameterAndUseTheSettersFVM(
      GetModelFromLNDatabaseThereIsParameterFVM getModel)
  async {
    return _codeNetworkAndLocalDatabase(
      getModel.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(),
      getModel.callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(),
    );
  }

  static Future<String> insertModelToLocalDatabaseThereIsParameterAndInsertModelToLocalListModelFVM(
      InsertModelToLocalDatabaseThereIsParameterAndInsertModelToLocalListModelFVM insertModel)
  async {
    // Insert Model FVM
    return _codeNetworkOrLocalDatabaseAndListModel(
        insertModel.insertModelToLocalDatabaseThereIsParameterFVM(),
        insertModel.insertModelToLocalListModelFVM
    );
  }

  static Future<String> updateModelToLocalDatabaseThereIsParameterAndUpdateModelToLocalListModelFVM(
      UpdateModelToLocalDatabaseThereIsParameterAndUpdateModelToLocalListModelFVM updateModel)
  async {
    // Update Model FVM
    return _codeNetworkOrLocalDatabaseAndListModel(
        updateModel.updateModelToLocalDatabaseThereIsParameterFVM(),
        updateModel.updateModelToLocalListModelFVM
    );
  }

  static Future<String> deleteModelToLocalDatabaseThereIsParameterAndDeleteModelToLocalListModelFVM(
      DeleteModelToLocalDatabaseThereIsParameterAndDeleteModelToLocalListModelFVM deleteModel)
  async {
    // Delete Model FVM
    return _codeNetworkOrLocalDatabaseAndListModel(
        deleteModel.deleteModelToLocalDatabaseThereIsParameterFVM(),
        deleteModel.deleteModelToLocalListModelFVM
    );
  }

  static Future<String> insertModelToNetworkDatabaseThereIsParameterAndInsertModelToNetworkListModelFVM(
      InsertModelToNetworkDatabaseThereIsParameterAndInsertModelToNetworkListModelFVM insertModel)
  async {
    // Insert Model FVM
    return _codeNetworkOrLocalDatabaseAndListModel(
        insertModel.insertModelToNetworkDatabaseThereIsParameterFVM(),
        insertModel.insertModelToNetworkListModelFVM
    );
  }

  static Future<String> updateModelToNetworkDatabaseThereIsParameterAndUpdateModelToNetworkListModelFVM(
      UpdateModelToNetworkDatabaseThereIsParameterAndUpdateModelToNetworkListModelFVM updateModel)
  async {
    // Update Model FVM
    return _codeNetworkOrLocalDatabaseAndListModel(
        updateModel.updateModelToNetworkDatabaseThereIsParameterFVM(),
        updateModel.updateModelToNetworkListModelFVM);
  }

  static Future<String> deleteModelToNetworkDatabaseThereIsParameterAndDeleteModelToNetworkListModelFVM(
      DeleteModelToNetworkDatabaseThereIsParameterAndDeleteModelToNetworkListModelFVM deleteModel)
  async {
    // Delete Model FVM
    return _codeNetworkOrLocalDatabaseAndListModel(
        deleteModel.deleteModelToNetworkDatabaseThereIsParameterFVM(),
        deleteModel.deleteModelToNetworkListModelFVM
    );
  }

  static Future<String> insertModelToLNDatabaseThereIsParameterAndInsertModelToLNListModelFVM(
      InsertModelToLNDatabaseThereIsParameterAndInsertModelToLNListModelFVM  insertModel)
  async {
    // Insert Model FVM
    return _codeNetworkAndLocalDatabaseAndListModel(
        insertModel.insertModelToNetworkDatabaseThereIsParameterFVM(),
        insertModel.insertModelToNetworkListModelFVM,
        insertModel.insertModelToLocalDatabaseThereIsParameterFVM(),
        insertModel.insertModelToLocalListModelFVM);
  }

  static Future<String> updateModelToLNDatabaseThereIsParameterAndUpdateModelToLNListModelFVM(
      UpdateModelToLNDatabaseThereIsParameterAndUpdateModelToLNListModelFVM updateModel)
  async {
    // Update Model FVM
    return _codeNetworkAndLocalDatabaseAndListModel(
        updateModel.updateModelToNetworkDatabaseThereIsParameterFVM(),
        updateModel.updateModelToNetworkListModelFVM,
        updateModel.updateModelToLocalDatabaseThereIsParameterFVM(),
        updateModel.updateModelToLocalListModelFVM);
  }

  static Future<String> deleteModelToLNDatabaseThereIsParameterAndDeleteModelToLNListModelFVM(
      DeleteModelToLNDatabaseThereIsParameterAndDeleteModelToLNListModelFVM deleteModel)
  async {
    // Delete Model FVM
    return _codeNetworkAndLocalDatabaseAndListModel(
        deleteModel.deleteModelToNetworkDatabaseThereIsParameterFVM(),
        deleteModel.deleteModelToNetworkListModelFVM,
        deleteModel.deleteModelToLocalDatabaseThereIsParameterFVM(),
        deleteModel.deleteModelToLocalListModelFVM);
  }
  
  /* OTHER */

  static Future<String> _codeNetworkOrLocalDatabase(
      Future<Response<String,BaseException>> function) async
  {
    var result = await function;
    if(result.isSuccessResponse) {
      return result.getData;
    } else {
      return result.getException.getSendMessageToTheView;
    }
  }

  static Future<String> _codeNetworkAndLocalDatabase(
      Future<Response<String,BaseException>> networkFunction,
      Future<Response<String,BaseException>> localFunction) async
  {
    var resultNetwork = await networkFunction;
    if(resultNetwork.isSuccessResponse) {
      var resultLocal = await localFunction;
      if(resultLocal.isSuccessResponse) {
        return resultLocal.getData;
      } else {
        return resultLocal.getException.getSendMessageToTheView;
      }
    } else {
      return resultNetwork.getException.getSendMessageToTheView;
    }
  }

  static bool _codeNetworkOrLocalListModel(
      bool function)
  {
    if(function) {
      return true;
    } else {
      return false;
    }
  }

  static bool _codeNetworkAndLocalListModel(
      bool functionNetwork,
      bool functionLocal)
  {
    if(functionNetwork) {
      if(functionLocal) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }


  static Future<String> _codeNetworkOrLocalDatabaseAndListModel(
      Future<Response<String,BaseException>> functionOne,
      Function functionTwo) async 
  {
    var result = await functionOne;
    if(result.isSuccessResponse) {
      functionTwo();
      return result.getData;
    } else {
      return result.getException.getSendMessageToTheView;
    }
  }

  static Future<String> _codeNetworkAndLocalDatabaseAndListModel(
      Future<Response<String,BaseException>> networkFunctionOne,
      Function networkFunctionTwo,
      Future<Response<String,BaseException>> localFunctionOne,
      Function localFunctionTwo) async
  {
    var resultNetwork = await networkFunctionOne;
    if(resultNetwork.isSuccessResponse) {
      networkFunctionTwo();
      var resultLocal = await localFunctionOne;
      if(resultLocal.isSuccessResponse) {
        localFunctionTwo();
        return resultLocal.getData;
      } else {
        return resultLocal.getException.getSendMessageToTheView;
      }
    } else {
      return resultNetwork.getException.getSendMessageToTheView;
    }
  }

}