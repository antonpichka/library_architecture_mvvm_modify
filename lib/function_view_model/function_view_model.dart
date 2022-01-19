import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_list_model_domain_for_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_list_model_domain_for_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_list_model_domain_for_network_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_ln_database_there_is_parameter_and_delete_model_to_list_model_domain_for_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_ln_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_local_database_there_is_parameter_and_delete_model_to_list_model_domain_for_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_local_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_network_database_there_is_parameter_and_delete_model_to_list_model_domain_for_network_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_network_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_fvm/get_list_model_from_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_fvm/get_list_model_from_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_fvm/get_list_model_from_network_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_there_is_parameter_fvm/get_list_model_from_ln_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_there_is_parameter_fvm/get_list_model_from_local_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_there_is_parameter_fvm/get_list_model_from_network_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_model_from_database_there_is_parameter_fvm/get_model_from_ln_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_model_from_database_there_is_parameter_fvm/get_model_from_local_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_model_from_database_there_is_parameter_fvm/get_model_from_network_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_list_model_domain_for_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_list_model_domain_for_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_list_model_domain_for_network_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_ln_database_there_is_parameter_and_insert_model_to_list_model_domain_for_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_ln_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_local_database_there_is_parameter_and_insert_model_to_list_model_domain_for_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_local_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_network_database_there_is_parameter_and_insert_model_to_list_model_domain_for_network_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_network_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/iterator_for_list_model_database_fvm/iterator_for_list_model_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/iterator_for_list_model_database_fvm/iterator_for_list_model_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/iterator_for_list_model_database_fvm/iterator_for_list_model_network_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/model_local_database_for_one_entry_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/model_notification_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_list_model_domain_for_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_list_model_domain_for_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_list_model_domain_for_network_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_ln_database_there_is_parameter_and_update_model_to_list_model_domain_for_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_ln_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_local_database_there_is_parameter_and_update_model_to_list_model_domain_for_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_local_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_network_database_there_is_parameter_and_update_model_to_list_model_domain_for_network_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_network_database_there_is_parameter_fvm.dart';

class FunctionViewModel {

  static Future<void> callToMethodSetIteratorForListModelLNDatabaseAndSetListModelLNDatabaseUsingAnIteratorFVM(
      IteratorForListModelLNDatabaseFVM iteratorForListModelLNDatabaseFVM,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    var resultListModelDomainForNetworkDatabase = iteratorForListModelLNDatabaseFVM
        .callToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase = iteratorForListModelLNDatabaseFVM
        .callToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }
  
  static Future<void> callToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM(
      IteratorForListModelLocalDatabaseFVM iteratorForListModelLocalDatabaseFVM,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase =  iteratorForListModelLocalDatabaseFVM
        .callToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> callToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM(
      IteratorForListModelNetworkDatabaseFVM iteratorForListModelNetworkDatabaseFVM,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase =  iteratorForListModelNetworkDatabaseFVM
        .callToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }
  
  static Future<void> pushNotificationToZonedScheduleFVM(
      ModelNotificationFVM modelNotificationFVM,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    var resultNetworkDatabaseOrLocalDatabase = await modelNotificationFVM.pushNotificationToZonedScheduleThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> pushNotificationToShowFVM(
      ModelNotificationFVM modelNotificationFVM,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    var resultNetworkDatabaseOrLocalDatabase = await modelNotificationFVM.pushNotificationToShowThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> cancelNotificationFVM(
      ModelNotificationFVM modelNotificationFVM,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    var resultNetworkDatabaseOrLocalDatabase = await modelNotificationFVM.cancelNotificationThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> callToMethodGetModelFromLocalDatabaseForOneEntryAndUseTheSettersFVM(
      ModelLocalDatabaseForOneEntryFVM modelLocalDatabaseForOneEntryFVM,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException) async
  {
    var resultNetworkDatabaseOrLocalDatabase = await modelLocalDatabaseForOneEntryFVM
        .callToMethodGetModelFromLocalDatabaseForOneEntryAndUseTheSettersFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> insertModelToLocalDatabaseForOneEntryThereIsParameterFVM(
      ModelLocalDatabaseForOneEntryFVM modelLocalDatabaseForOneEntryFVM,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException) async
  {
    var resultNetworkDatabaseOrLocalDatabase = await modelLocalDatabaseForOneEntryFVM
        .insertModelToLocalDatabaseForOneEntryThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> deleteModelToLocalDatabaseForOneEntryFVM(
      ModelLocalDatabaseForOneEntryFVM modelLocalDatabaseForOneEntryFVM,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException) async
  {
    var resultNetworkDatabaseOrLocalDatabase = await modelLocalDatabaseForOneEntryFVM
        .deleteModelToLocalDatabaseForOneEntryFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> insertModelToLocalDatabaseThereIsParameterFVM(
      InsertModelToLocalDatabaseThereIsParameterFVM insertModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    // Insert Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await insertModel
        .insertModelToLocalDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static void insertModelToListModelDomainForLocalDatabaseFVM(
      InsertModelToListModelDomainForLocalDatabaseFVM insertModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException) 
  {
    // Insert Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertModel
        .insertModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }
  
  static Future<void> updateModelToLocalDatabaseThereIsParameterFVM(
      UpdateModelToLocalDatabaseThereIsParameterFVM updateModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    // Update Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await updateModel
        .updateModelToLocalDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static void updateModelToListModelDomainForLocalDatabaseFVM(
      UpdateModelToListModelDomainForLocalDatabaseFVM updateModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  {
    // Update Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = updateModel
        .updateModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> deleteModelToLocalDatabaseThereIsParameterFVM(
      DeleteModelToLocalDatabaseThereIsParameterFVM deleteModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    // Delete Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await  deleteModel
        .deleteModelToLocalDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static void deleteModelToListModelDomainForLocalDatabaseFVM(
      DeleteModelToListModelDomainForLocalDatabaseFVM deleteModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException) {
    // Delete Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = deleteModel
        .deleteModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseFVM getListModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    var resultNetworkDatabaseOrLocalDatabase = await getListModel
        .callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseThereIsParameterFVM getListModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    var resultNetworkDatabaseOrLocalDatabase = await getListModel
        .callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      GetModelFromLocalDatabaseThereIsParameterFVM getModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    var resultNetworkDatabaseOrLocalDatabase = await getModel
        .callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> insertModelToNetworkDatabaseThereIsParameterFVM(
      InsertModelToNetworkDatabaseThereIsParameterFVM insertModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    // Insert Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await insertModel
        .insertModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static void insertModelToListModelDomainForNetworkDatabaseFVM(
      InsertModelToListModelDomainForNetworkDatabaseFVM insertModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  {
    // Insert Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertModel
        .insertModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> updateModelToNetworkDatabaseThereIsParameterFVM(
      UpdateModelToNetworkDatabaseThereIsParameterFVM updateModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    // Update Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await updateModel
        .updateModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static void updateModelToListModelDomainForNetworkDatabaseFVM(
      UpdateModelToListModelDomainForNetworkDatabaseFVM updateModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  {
    // Update Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = updateModel
        .updateModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> deleteModelToNetworkDatabaseThereIsParameterFVM(
      DeleteModelToNetworkDatabaseThereIsParameterFVM deleteModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    // Delete Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await deleteModel
        .deleteModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static void deleteModelToListModelDomainForNetworkDatabaseFVM(
      DeleteModelToListModelDomainForNetworkDatabaseFVM deleteModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  {
    // Delete Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = deleteModel.deleteModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(
      GetListModelFromNetworkDatabaseFVM getListModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    var resultNetworkDatabaseOrLocalDatabase = await getListModel.callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromNetworkDatabaseThereIsParameterFVM getListModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    var resultNetworkDatabaseOrLocalDatabase = await getListModel
        .callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
      GetModelFromNetworkDatabaseThereIsParameterFVM getModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    var resultNetworkDatabaseOrLocalDatabase = await getModel
        .callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }
  
  static Future<void> insertModelToLNDatabaseThereIsParameterFVM(
      InsertModelToLNDatabaseThereIsParameterFVM insertModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    // Insert Model FVM
    var resultNetworkDatabase = await insertModel.insertModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultLocalDatabase = await insertModel.insertModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static void insertModelToListModelDomainForLNDatabaseFVM(
      InsertModelToListModelDomainForLNDatabaseFVM insertModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  {
    // Insert Model FVM
    var resultListModelDomainForNetworkDatabase = insertModel.insertModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = insertModel.insertModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> updateModelToLNDatabaseThereIsParameterFVM(
      UpdateModelToLNDatabaseThereIsParameterFVM updateModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    // Update Model FVM
    var resultNetworkDatabase = await updateModel.updateModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultLocalDatabase = await updateModel.updateModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static void updateModelToListModelDomainForLNDatabaseFVM(
      UpdateModelToListModelDomainForLNDatabaseFVM updateModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  {
    // Update Model FVM
    var resultListModelDomainForNetworkDatabase = updateModel.updateModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = updateModel.updateModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> deleteModelToLNDatabaseThereIsParameterFVM(
      DeleteModelToLNDatabaseThereIsParameterFVM deleteModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    // Delete Model FVM
    var resultListModelDomainForNetworkDatabase = await deleteModel.deleteModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = await deleteModel.deleteModelToLocalDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static void deleteModelToListModelDomainForLNDatabaseFVM(
      DeleteModelToListModelDomainForLNDatabaseFVM deleteModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  {
    // Delete Model FVM
    var resultListModelDomainForNetworkDatabase = deleteModel.deleteModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = deleteModel.deleteModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> callToMethodGetListModelFromLNDatabaseAndUseTheSettersFVM(
      GetListModelFromLNDatabaseFVM getListModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    var resultListModelDomainForNetworkDatabase = await getListModel.callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = await getListModel.callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> callToMethodGetListModelFromLNDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromLNDatabaseThereIsParameterFVM getListModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    var resultListModelDomainForNetworkDatabase = await getListModel.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = await getListModel.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }
  
  static Future<void> callToMethodGetModelFromLNDatabaseThereIsParameterAndUseTheSettersFVM(
      GetModelFromLNDatabaseThereIsParameterFVM getModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    var resultListModelDomainForNetworkDatabase = await getModel.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = await getModel.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> insertModelToLocalDatabaseThereIsParameterAndInsertModelToListModelDomainForLocalDatabaseFVM(
      InsertModelToLocalDatabaseThereIsParameterAndInsertModelToListModelDomainForLocalDatabaseFVM insertModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    // Insert Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await insertModel.insertModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertModel.insertModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> updateModelToLocalDatabaseThereIsParameterAndUpdateModelToListModelDomainForLocalDatabaseFVM(
      UpdateModelToLocalDatabaseThereIsParameterAndUpdateModelToListModelDomainForLocalDatabaseFVM updateModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    // Update Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await updateModel.updateModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase =  updateModel.updateModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> deleteModelToLocalDatabaseThereIsParameterAndDeleteModelToListModelDomainForLocalDatabaseFVM(
      DeleteModelToLocalDatabaseThereIsParameterAndDeleteModelToListModelDomainForLocalDatabaseFVM deleteModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    // Delete Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await deleteModel.deleteModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase =  deleteModel.deleteModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> insertModelToNetworkDatabaseThereIsParameterAndInsertModelToListModelDomainForNetworkDatabaseFVM(
      InsertModelToNetworkDatabaseThereIsParameterAndInsertModelToListModelDomainForNetworkDatabaseFVM insertModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    // Insert Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await insertModel.insertModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertModel.insertModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> updateModelToNetworkDatabaseThereIsParameterAndUpdateModelToListModelDomainForNetworkDatabaseFVM(
      UpdateModelToNetworkDatabaseThereIsParameterAndUpdateModelToListModelDomainForNetworkDatabaseFVM updateModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    // Update Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await updateModel.updateModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = updateModel.updateModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> deleteModelToNetworkDatabaseThereIsParameterAndDeleteModelToListModelDomainForNetworkDatabaseFVM(
      DeleteModelToNetworkDatabaseThereIsParameterAndDeleteModelToListModelDomainForNetworkDatabaseFVM deleteModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    // Delete Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await deleteModel.deleteModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = deleteModel.deleteModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> insertModelToLNDatabaseThereIsParameterAndInsertModelToListModelDomainForLNDatabaseFVM(
      InsertModelToLNDatabaseThereIsParameterAndInsertModelToListModelDomainForLNDatabaseFVM insertModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    // Insert Model FVM
    var resultNetworkDatabase = await insertModel.insertModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForNetworkDatabase = insertModel.insertModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultLocalDatabase = await insertModel.insertModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase = insertModel.insertModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> updateModelToLNDatabaseThereIsParameterAndUpdateModelToListModelDomainForLNDatabaseFVM(
      UpdateModelToLNDatabaseThereIsParameterAndUpdateModelToListModelDomainForLNDatabaseFVM updateModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    // Update Model FVM
    var resultNetworkDatabase = await updateModel.updateModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForNetworkDatabase = updateModel.updateModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultLocalDatabase = await updateModel.updateModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase = updateModel.updateModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> deleteModelToLNDatabaseThereIsParameterAndDeleteModelToListModelDomainForLNDatabaseFVM(
      DeleteModelToLNDatabaseThereIsParameterAndDeleteModelToListModelDomainForLNDatabaseFVM deleteModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException)
  async {
    // Delete Model FVM
    var resultNetworkDatabase = await deleteModel.deleteModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForNetworkDatabase = deleteModel.deleteModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultLocalDatabase = await deleteModel.deleteModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase = deleteModel.deleteModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }
  
  /* OTHER */

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