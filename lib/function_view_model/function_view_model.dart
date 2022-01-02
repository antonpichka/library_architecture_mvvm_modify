


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
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/sp_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_ln_database_there_is_parameter_and_update_model_to_ln_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_ln_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_ln_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_local_database_there_is_parameter_and_update_model_to_local_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_local_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_local_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_network_database_there_is_parameter_and_update_model_to_network_list_model_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_network_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_network_list_model_fvm.dart';

class FunctionViewModel {

  static Future<String> callToMethodGetModelFromSPAndUseTheSetters(
      SPModelFVM spModelFVM) async
  {
    return _codeNetworkOrLocalDatabase(
        spModelFVM.callToMethodGetModelFromSPAndUseTheSetters()
    );
  }

  static Future<String> insertModelToSPThereIsParameter(
      SPModelFVM spModelFVM) async
  {
    return _codeNetworkOrLocalDatabase(
        spModelFVM.insertModelToSPThereIsParameter()
    );
  }

  static Future<String> deleteModelToSP(
      SPModelFVM spModelFVM) async
  {
    return _codeNetworkOrLocalDatabase(
        spModelFVM.deleteModelToSP()
    );
  }

  static Future<String> insertModelToLocalDatabaseThereIsParameter(
      InsertModelToLocalDatabaseThereIsParameterFVM insertModel)
  async {
    // Insert Model FVM
    return _codeNetworkOrLocalDatabase(
        insertModel.insertModelToLocalDatabaseThereIsParameter(),
    );
  }

  static bool insertModelToLocalListModel(
      InsertModelToLocalListModelFVM insertModel) {
    // Insert Model FVM
    return _codeNetworkOrLocalListModel(
      insertModel.insertModelToLocalListModel()
    );
  }


  static Future<String> updateModelToLocalDatabaseThereIsParameter(
      UpdateModelToLocalDatabaseThereIsParameterFVM updateModel)
  async {
    // Update Model FVM
    return _codeNetworkOrLocalDatabase(
      updateModel.updateModelToLocalDatabaseThereIsParameter(),
    );
  }

  static bool updateModelToLocalListModel(
      UpdateModelToLocalListModelFVM updateModel) {
    // Insert Model FVM
    return _codeNetworkOrLocalListModel(
        updateModel.updateModelToLocalListModel()
    );
  }


  static Future<String> deleteModelToLocalDatabaseThereIsParameter(
      DeleteModelToLocalDatabaseThereIsParameterFVM deleteModel)
  async {
    // Delete Model FVM
    return _codeNetworkOrLocalDatabase(
      deleteModel.deleteModelToLocalDatabaseThereIsParameter(),
    );
  }

  static bool deleteModelToLocalListModel(
      DeleteModelToLocalListModelFVM deleteModel) {
    // Insert Model FVM
    return _codeNetworkOrLocalListModel(
        deleteModel.deleteModelToLocalListModel()
    );
  }

  static Future<String> callToMethodGetListModelFromLocalDatabaseAndUseTheSetters(
      GetListModelFromLocalDatabaseFVM getListModel)
  async {
    return _codeNetworkOrLocalDatabase(
      getListModel.callToMethodGetListModelFromLocalDatabaseAndUseTheSetters(),
    );
  }

  static Future<String> callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSetters(
      GetListModelFromLocalDatabaseThereIsParameterFVM getListModel)
  async {
    return _codeNetworkOrLocalDatabase(
      getListModel.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSetters(),
    );
  }

  static Future<String> callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSetters(
      GetModelFromLocalDatabaseThereIsParameterFVM getModel)
  async {
    return _codeNetworkOrLocalDatabase(
      getModel.callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSetters(),
    );
  }

  static Future<String> insertModelToNetworkDatabaseThereIsParameter(
      InsertModelToNetworkDatabaseThereIsParameterFVM insertModel)
  async {
    // Insert Model FVM
    return _codeNetworkOrLocalDatabase(
      insertModel.insertModelToNetworkDatabaseThereIsParameter(),
    );
  }

  static bool insertModelToNetworkListModel(
      InsertModelToNetworkListModelFVM insertModel) {
    // Insert Model FVM
    return _codeNetworkOrLocalListModel(
        insertModel.insertModelToNetworkListModel()
    );
  }

  static Future<String> updateModelToNetworkDatabaseThereIsParameter(
      UpdateModelToNetworkDatabaseThereIsParameterFVM updateModel)
  async {
    // Update Model FVM
    return _codeNetworkOrLocalDatabase(
      updateModel.updateModelToNetworkDatabaseThereIsParameter(),
    );
  }

  static bool updateModelToNetworkListModel(
      UpdateModelToNetworkListModelFVM updateModel) {
    // Update Model FVM
    return _codeNetworkOrLocalListModel(
        updateModel.updateModelToNetworkListModel()
    );
  }

  static Future<String> deleteModelToNetworkDatabaseThereIsParameter(
      DeleteModelToNetworkDatabaseThereIsParameterFVM deleteModel)
  async {
    // Delete Model FVM
    return _codeNetworkOrLocalDatabase(
      deleteModel.deleteModelToNetworkDatabaseThereIsParameter(),
    );
  }

  static bool deleteModelToNetworkListModel(
      DeleteModelToNetworkListModelFVM deleteModel) {
    // Delete Model FVM
    return _codeNetworkOrLocalListModel(
        deleteModel.deleteModelToNetworkListModel()
    );
  }

  static Future<String> callToMethodGetListModelFromNetworkDatabaseAndUseTheSetters(
      GetListModelFromNetworkDatabaseFVM getListModel)
  async {
    return _codeNetworkOrLocalDatabase(
      getListModel.callToMethodGetListModelFromNetworkDatabaseAndUseTheSetters(),
    );
  }

  static Future<String> callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSetters(
      GetListModelFromNetworkDatabaseThereIsParameterFVM getListModel)
  async {
    return _codeNetworkOrLocalDatabase(
      getListModel.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSetters(),
    );
  }

  static Future<String> callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSetters(
      GetModelFromNetworkDatabaseThereIsParameterFVM getModel)
  async {
    return _codeNetworkOrLocalDatabase(
      getModel.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSetters(),
    );
  }
  
  static Future<String> insertModelToLNDatabaseThereIsParameter(
      InsertModelToLNDatabaseThereIsParameterFVM insertModel)
  async {
    // Insert Model FVM
    return _codeNetworkAndLocalDatabase(
      insertModel.insertModelToNetworkDatabaseThereIsParameter(),
      insertModel.insertModelToLocalDatabaseThereIsParameter(),
    );
  }

  static bool insertModelToLNListModel(
      InsertModelToLNListModelFVM insertModel) {
    // Insert Model FVM
    return _codeNetworkAndLocalListModel(
      insertModel.insertModelToNetworkListModel(),
      insertModel.insertModelToLocalListModel(),
    );
  }

  static Future<String> updateModelToLNDatabaseThereIsParameter(
      UpdateModelToLNDatabaseThereIsParameterFVM updateModel)
  async {
    // Update Model FVM
    return _codeNetworkAndLocalDatabase(
      updateModel.updateModelToNetworkDatabaseThereIsParameter(),
      updateModel.updateModelToLocalDatabaseThereIsParameter(),
    );
  }

  static bool updateModelToLNListModel(
      UpdateModelToLNListModelFVM updateModel) {
    // Update Model FVM
    return _codeNetworkAndLocalListModel(
      updateModel.updateModelToNetworkListModel(),
      updateModel.updateModelToLocalListModel(),
    );
  }

  static Future<String> deleteModelToLNDatabaseThereIsParameter(
      DeleteModelToLNDatabaseThereIsParameterFVM deleteModel)
  async {
    // Delete Model FVM
    return _codeNetworkAndLocalDatabase(
      deleteModel.deleteModelToNetworkDatabaseThereIsParameter(),
      deleteModel.deleteModelToLocalDatabaseThereIsParameter(),
    );
  }

  static bool deleteModelToLNListModel(
      DeleteModelToLNListModelFVM deleteModel) {
    // Delete Model FVM
    return _codeNetworkAndLocalListModel(
      deleteModel.deleteModelToNetworkListModel(),
      deleteModel.deleteModelToLocalListModel(),
    );
  }

  static Future<String> callToMethodGetListModelFromLNDatabaseAndUseTheSetters(
      GetListModelFromLNDatabaseFVM getListModel)
  async {
    return _codeNetworkAndLocalDatabase(
      getListModel.callToMethodGetListModelFromNetworkDatabaseAndUseTheSetters(),
      getListModel.callToMethodGetListModelFromLocalDatabaseAndUseTheSetters(),
    );
  }

  static Future<String> callToMethodGetListModelFromLNDatabaseThereIsParameterAndUseTheSetters(
      GetListModelFromLNDatabaseThereIsParameterFVM getListModel)
  async {
    return _codeNetworkAndLocalDatabase(
      getListModel.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSetters(),
      getListModel.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSetters(),
    );
  }



  static Future<String> callToMethodGetModelFromLNDatabaseThereIsParameterAndUseTheSetters(
      GetModelFromLNDatabaseThereIsParameterFVM getModel)
  async {
    return _codeNetworkAndLocalDatabase(
      getModel.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSetters(),
      getModel.callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSetters(),
    );
  }

  static Future<String> insertModelToLocalDatabaseThereIsParameterAndInsertModelToLocalListModel(
      InsertModelToLocalDatabaseThereIsParameterAndInsertModelToLocalListModelFVM insertModel)
  async {
    // Insert Model FVM
    return _codeNetworkOrLocalDatabaseAndListModel(
        insertModel.insertModelToLocalDatabaseThereIsParameter(),
        insertModel.insertModelToLocalListModel
    );
  }

  static Future<String> updateModelToLocalDatabaseThereIsParameterAndUpdateModelToLocalListModel(
      UpdateModelToLocalDatabaseThereIsParameterAndUpdateModelToLocalListModelFVM updateModel)
  async {
    // Update Model FVM
    return _codeNetworkOrLocalDatabaseAndListModel(
        updateModel.updateModelToLocalDatabaseThereIsParameter(),
        updateModel.updateModelToLocalListModel
    );
  }

  static Future<String> deleteModelToLocalDatabaseThereIsParameterAndDeleteModelToLocalListModel(
      DeleteModelToLocalDatabaseThereIsParameterAndDeleteModelToLocalListModelFVM deleteModel)
  async {
    // Delete Model FVM
    return _codeNetworkOrLocalDatabaseAndListModel(
        deleteModel.deleteModelToLocalDatabaseThereIsParameter(),
        deleteModel.deleteModelToLocalListModel
    );
  }

  static Future<String> insertModelToNetworkDatabaseThereIsParameterAndInsertModelToNetworkListModel(
      InsertModelToNetworkDatabaseThereIsParameterAndInsertModelToNetworkListModelFVM insertModel)
  async {
    // Insert Model FVM
    return _codeNetworkOrLocalDatabaseAndListModel(
        insertModel.insertModelToNetworkDatabaseThereIsParameter(),
        insertModel.insertModelToNetworkListModel
    );
  }

  static Future<String> updateModelToNetworkDatabaseThereIsParameterAndUpdateModelToNetworkListModel(
      UpdateModelToNetworkDatabaseThereIsParameterAndUpdateModelToNetworkListModelFVM updateModel)
  async {
    // Update Model FVM
    return _codeNetworkOrLocalDatabaseAndListModel(
        updateModel.updateModelToNetworkDatabaseThereIsParameter(),
        updateModel.updateModelToNetworkListModel);
  }

  static Future<String> deleteModelToNetworkDatabaseThereIsParameterAndDeleteModelToNetworkListModel(
      DeleteModelToNetworkDatabaseThereIsParameterAndDeleteModelToNetworkListModelFVM deleteModel)
  async {
    // Delete Model FVM
    return _codeNetworkOrLocalDatabaseAndListModel(
        deleteModel.deleteModelToNetworkDatabaseThereIsParameter(),
        deleteModel.deleteModelToNetworkListModel
    );
  }

  static Future<String> insertModelToLNDatabaseThereIsParameterAndInsertModelToLNListModel(
      InsertModelToLNDatabaseThereIsParameterAndInsertModelToLNListModelFVM  insertModel)
  async {
    // Insert Model FVM
    return _codeNetworkAndLocalDatabaseAndListModel(
        insertModel.insertModelToNetworkDatabaseThereIsParameter(),
        insertModel.insertModelToNetworkListModel,
        insertModel.insertModelToLocalDatabaseThereIsParameter(),
        insertModel.insertModelToLocalListModel);
  }

  static Future<String> updateModelToLNDatabaseThereIsParameterAndUpdateModelToLNListModel(
      UpdateModelToLNDatabaseThereIsParameterAndUpdateModelToLNListModelFVM updateModel)
  async {
    // Update Model FVM
    return _codeNetworkAndLocalDatabaseAndListModel(
        updateModel.updateModelToNetworkDatabaseThereIsParameter(),
        updateModel.updateModelToNetworkListModel,
        updateModel.updateModelToLocalDatabaseThereIsParameter(),
        updateModel.updateModelToLocalListModel);
  }

  static Future<String> deleteModelToLNDatabaseThereIsParameterAndDeleteModelToLNListModel(
      DeleteModelToLNDatabaseThereIsParameterAndDeleteModelToLNListModelFVM deleteModel)
  async {
    // Delete Model FVM
    return _codeNetworkAndLocalDatabaseAndListModel(
        deleteModel.deleteModelToNetworkDatabaseThereIsParameter(),
        deleteModel.deleteModelToNetworkListModel,
        deleteModel.deleteModelToLocalDatabaseThereIsParameter(),
        deleteModel.deleteModelToLocalListModel);
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