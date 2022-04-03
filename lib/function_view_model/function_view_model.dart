import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_list_model_fvm/delete_list_model_to_list_model_domain_for_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_list_model_fvm/delete_list_model_to_list_model_domain_for_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_list_model_fvm/delete_list_model_to_list_model_domain_for_network_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_list_model_fvm/delete_list_model_to_ln_database_there_is_parameter_and_delete_list_model_to_list_model_domain_for_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_list_model_fvm/delete_list_model_to_ln_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_list_model_fvm/delete_list_model_to_local_database_there_is_parameter_and_delete_list_model_to_list_model_domain_for_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_list_model_fvm/delete_list_model_to_local_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_list_model_fvm/delete_list_model_to_network_database_there_is_parameter_and_delete_list_model_to_list_model_domain_for_network_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_list_model_fvm/delete_list_model_to_network_database_there_is_parameter_fvm.dart';
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
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_list_model_fvm/insert_list_model_to_list_model_domain_for_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_list_model_fvm/insert_list_model_to_list_model_domain_for_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_list_model_fvm/insert_list_model_to_list_model_domain_for_network_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_list_model_fvm/insert_list_model_to_ln_database_there_is_parameter_and_insert_list_model_to_list_model_domain_for_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_list_model_fvm/insert_list_model_to_ln_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_list_model_fvm/insert_list_model_to_local_database_there_is_parameter_and_insert_list_model_to_list_model_domain_for_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_list_model_fvm/insert_list_model_to_local_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_list_model_fvm/insert_list_model_to_network_database_there_is_parameter_and_insert_list_model_to_list_model_domain_for_network_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_list_model_fvm/insert_list_model_to_network_database_there_is_parameter_fvm.dart';
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
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_list_model_fvm/update_list_model_to_list_model_domain_for_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_list_model_fvm/update_list_model_to_list_model_domain_for_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_list_model_fvm/update_list_model_to_list_model_domain_for_network_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_list_model_fvm/update_list_model_to_ln_database_there_is_parameter_and_update_list_model_to_list_model_domain_for_ln_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_list_model_fvm/update_list_model_to_ln_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_list_model_fvm/update_list_model_to_local_database_there_is_parameter_and_update_list_model_to_list_model_domain_for_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_list_model_fvm/update_list_model_to_local_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_list_model_fvm/update_list_model_to_network_database_there_is_parameter_and_update_list_model_to_list_model_domain_for_network_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_list_model_fvm/update_list_model_to_network_database_there_is_parameter_fvm.dart';
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
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  async {
    var resultListModelDomainForNetworkDatabase = iteratorForListModelLNDatabaseFVM
        .callToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase = iteratorForListModelLNDatabaseFVM
        .callToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }
  
  static Future<void> callToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM(
      IteratorForListModelLocalDatabaseFVM iteratorForListModelLocalDatabaseFVM,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  async {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase =  iteratorForListModelLocalDatabaseFVM
        .callToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> callToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM(
      IteratorForListModelNetworkDatabaseFVM iteratorForListModelNetworkDatabaseFVM,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  async {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = iteratorForListModelNetworkDatabaseFVM
        .callToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> insertModelToLocalDatabaseThereIsParameterFVM(
      InsertModelToLocalDatabaseThereIsParameterFVM insertModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  async {
    // Insert Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await insertModel
        .insertModelToLocalDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> insertListModelToLocalDatabaseThereIsParameterFVM(
      InsertListModelToLocalDatabaseThereIsParameterFVM insertListModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  async {
    // Insert Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await insertListModel
        .insertListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static void insertModelToListModelDomainForLocalDatabaseFVM(
      InsertModelToListModelDomainForLocalDatabaseFVM insertModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  {
    // Insert Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertModel
        .insertModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static void insertListModelToListModelDomainForLocalDatabaseFVM(
      InsertListModelToListModelDomainForLocalDatabaseFVM insertListModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  {
    // Insert Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertListModel
        .insertListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }
  
  static Future<void> updateModelToLocalDatabaseThereIsParameterFVM(
      UpdateModelToLocalDatabaseThereIsParameterFVM updateModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  async {
    // Update Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await updateModel
        .updateModelToLocalDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> updateListModelToLocalDatabaseThereIsParameterFVM(
      UpdateListModelToLocalDatabaseThereIsParameterFVM updateListModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  async {
    // Update Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await updateListModel
        .updateListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static void updateModelToListModelDomainForLocalDatabaseFVM(
      UpdateModelToListModelDomainForLocalDatabaseFVM updateModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  {
    // Update Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = updateModel
        .updateModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static void updateListModelToListModelDomainForLocalDatabaseFVM(
      UpdateListModelToListModelDomainForLocalDatabaseFVM updateListModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  {
    // Update Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = updateListModel
        .updateListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> deleteModelToLocalDatabaseThereIsParameterFVM(
      DeleteModelToLocalDatabaseThereIsParameterFVM deleteModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  async {
    // Delete Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await  deleteModel
        .deleteModelToLocalDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> deleteListModelToLocalDatabaseThereIsParameterFVM(
      DeleteListModelToLocalDatabaseThereIsParameterFVM deleteListModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  async {
    // Delete Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await  deleteListModel
        .deleteListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static void deleteModelToListModelDomainForLocalDatabaseFVM(
      DeleteModelToListModelDomainForLocalDatabaseFVM deleteModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException}) {
    // Delete Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = deleteModel
        .deleteModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static void deleteListModelToListModelDomainForLocalDatabaseFVM(
      DeleteListModelToListModelDomainForLocalDatabaseFVM deleteListModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException}) {
    // Delete Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = deleteListModel
        .deleteListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseFVM getListModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  async {
    var resultNetworkDatabaseOrLocalDatabase = await getListModel
        .callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseThereIsParameterFVM getListModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  async {
    var resultNetworkDatabaseOrLocalDatabase = await getListModel
        .callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      GetModelFromLocalDatabaseThereIsParameterFVM getModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  async {
    var resultNetworkDatabaseOrLocalDatabase = await getModel
        .callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> insertModelToNetworkDatabaseThereIsParameterFVM(
      InsertModelToNetworkDatabaseThereIsParameterFVM insertModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException})
  async {
    // Insert Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await insertModel
        .insertModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> insertListModelToNetworkDatabaseThereIsParameterFVM(
      InsertListModelToNetworkDatabaseThereIsParameterFVM insertListModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException})
  async {
    // Insert Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await insertListModel
        .insertListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceAllException(
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
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  {
    // Insert Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertModel
        .insertModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static void insertListModelToListModelDomainForNetworkDatabaseFVM(
      InsertListModelToListModelDomainForNetworkDatabaseFVM insertListModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  {
    // Insert Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertListModel
        .insertListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> updateModelToNetworkDatabaseThereIsParameterFVM(
      UpdateModelToNetworkDatabaseThereIsParameterFVM updateModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException})
  async {
    // Update Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await updateModel
        .updateModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> updateListModelToNetworkDatabaseThereIsParameterFVM(
      UpdateListModelToNetworkDatabaseThereIsParameterFVM updateListModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException})
  async {
    // Update Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await updateListModel
        .updateListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceAllException(
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
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  {
    // Update Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = updateModel
        .updateModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static void updateListModelToListModelDomainForNetworkDatabaseFVM(
      UpdateListModelToListModelDomainForNetworkDatabaseFVM updateListModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  {
    // Update Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = updateListModel
        .updateListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> deleteModelToNetworkDatabaseThereIsParameterFVM(
      DeleteModelToNetworkDatabaseThereIsParameterFVM deleteModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException})
  async {
    // Delete Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await deleteModel
        .deleteModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> deleteListModelToNetworkDatabaseThereIsParameterFVM(
      DeleteListModelToNetworkDatabaseThereIsParameterFVM deleteListModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException})
  async {
    // Delete Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await deleteListModel
        .deleteListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
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
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  {
    // Delete Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = deleteModel.deleteModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static void deleteListModelToListModelDomainForNetworkDatabaseFVM(
      DeleteListModelToListModelDomainForNetworkDatabaseFVM deleteModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  {
    // Delete Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = deleteModel.deleteListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(
      GetListModelFromNetworkDatabaseFVM getListModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException})
  async {
    var resultNetworkDatabaseOrLocalDatabase = await getListModel.callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceAllException(
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
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    var resultNetworkDatabaseOrLocalDatabase = await getListModel
        .callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceAllException(
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
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    var resultNetworkDatabaseOrLocalDatabase = await getModel
        .callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceAllException(
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
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    // Insert Model FVM
    var resultNetworkDatabase = await insertModel.insertModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultLocalDatabase = await insertModel.insertModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> insertListModelToLNDatabaseThereIsParameterFVM(
      InsertListModelToLNDatabaseThereIsParameterFVM insertListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    // Insert Model FVM
    var resultNetworkDatabase = await insertListModel.insertListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultLocalDatabase = await insertListModel.insertListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static void insertModelToListModelDomainForLNDatabaseFVM(
      InsertModelToListModelDomainForLNDatabaseFVM insertModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  {
    // Insert Model FVM
    var resultListModelDomainForNetworkDatabase = insertModel.insertModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = insertModel.insertModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static void insertListModelToListModelDomainForLNDatabaseFVM(
      InsertListModelToListModelDomainForLNDatabaseFVM insertListModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException})
  {
    // Insert Model FVM
    var resultListModelDomainForNetworkDatabase = insertListModel.insertListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = insertListModel.insertListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> updateModelToLNDatabaseThereIsParameterFVM(
      UpdateModelToLNDatabaseThereIsParameterFVM updateModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException})
  async {
    // Update Model FVM
    var resultNetworkDatabase = await updateModel.updateModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultLocalDatabase = await updateModel.updateModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> updateListModelToLNDatabaseThereIsParameterFVM(
      UpdateListModelToLNDatabaseThereIsParameterFVM updateListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    // Update Model FVM
    var resultNetworkDatabase = await updateListModel.updateListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultLocalDatabase = await updateListModel.updateListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static void updateModelToListModelDomainForLNDatabaseFVM(
      UpdateModelToListModelDomainForLNDatabaseFVM updateModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException})
  {
    // Update Model FVM
    var resultListModelDomainForNetworkDatabase = updateModel.updateModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = updateModel.updateModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static void updateListModelToListModelDomainForLNDatabaseFVM(
      UpdateListModelToListModelDomainForLNDatabaseFVM updateListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException})
  {
    // Update Model FVM
    var resultListModelDomainForNetworkDatabase = updateListModel.updateListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = updateListModel.updateListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> deleteModelToLNDatabaseThereIsParameterFVM(
      DeleteModelToLNDatabaseThereIsParameterFVM deleteModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    // Delete Model FVM
    var resultListModelDomainForNetworkDatabase = await deleteModel.deleteModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = await deleteModel.deleteModelToLocalDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> deleteListModelToLNDatabaseThereIsParameterFVM(
      DeleteListModelToLNDatabaseThereIsParameterFVM deleteListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    // Delete Model FVM
    var resultListModelDomainForNetworkDatabase = await deleteListModel.deleteListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = await deleteListModel.deleteListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static void deleteModelToListModelDomainForLNDatabaseFVM(
      DeleteModelToListModelDomainForLNDatabaseFVM deleteModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException})
  {
    // Delete Model FVM
    var resultListModelDomainForNetworkDatabase = deleteModel.deleteModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
        resultListModelDomainForNetworkDatabase.getException,
        functionForResultDomainException,
        functionForResultLocalException,
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = deleteModel.deleteModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
        resultListModelDomainForLocalDatabase.getException,
        functionForResultDomainException,
        functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static void deleteListModelToListModelDomainForLNDatabaseFVM(
      DeleteListModelToListModelDomainForLNDatabaseFVM deleteListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException})
  {
    // Delete Model FVM
    var resultListModelDomainForNetworkDatabase = deleteListModel.deleteListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
        resultListModelDomainForNetworkDatabase.getException,
        functionForResultDomainException,
        functionForResultLocalException,
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = deleteListModel.deleteListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
        resultListModelDomainForLocalDatabase.getException,
        functionForResultDomainException,
        functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> callToMethodGetListModelFromLNDatabaseAndUseTheSettersFVM(
      GetListModelFromLNDatabaseFVM getListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    var resultListModelDomainForNetworkDatabase = await getListModel.callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = await getListModel.callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> callToMethodGetListModelFromLNDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromLNDatabaseThereIsParameterFVM getListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    var resultListModelDomainForNetworkDatabase = await getListModel.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = await getListModel.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
         resultListModelDomainForLocalDatabase.getException,
         functionForResultDomainException,
         functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }
  
  static Future<void> callToMethodGetModelFromLNDatabaseThereIsParameterAndUseTheSettersFVM(
      GetModelFromLNDatabaseThereIsParameterFVM getModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    var resultListModelDomainForNetworkDatabase = await getModel.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = await getModel.callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
        resultListModelDomainForLocalDatabase.getException,
        functionForResultDomainException,
        functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> insertModelToLocalDatabaseThereIsParameterAndInsertModelToListModelDomainForLocalDatabaseFVM(
      InsertModelToLocalDatabaseThereIsParameterAndInsertModelToListModelDomainForLocalDatabaseFVM insertModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException})
  async {
    // Insert Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await insertModel.insertModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
        resultLocalDatabaseOrNetworkDatabase.getException,
        functionForResultDomainException,
        functionForResultLocalException,
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertModel.insertModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
        resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
        functionForResultDomainException,
        functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> insertListModelToLocalDatabaseThereIsParameterAndInsertListModelToListModelDomainForLocalDatabaseFVM(
      InsertListModelToLocalDatabaseThereIsParameterAndInsertListModelToListModelDomainForLocalDatabaseFVM insertListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException})
  async {
    // Insert Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await insertListModel.insertListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertListModel.insertListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> updateModelToLocalDatabaseThereIsParameterAndUpdateModelToListModelDomainForLocalDatabaseFVM(
      UpdateModelToLocalDatabaseThereIsParameterAndUpdateModelToListModelDomainForLocalDatabaseFVM updateModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException})
  async {
    // Update Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await updateModel.updateModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase =  updateModel.updateModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> updateListModelToLocalDatabaseThereIsParameterAndUpdateListModelToListModelDomainForLocalDatabaseFVM(
      UpdateListModelToLocalDatabaseThereIsParameterAndUpdateListModelToListModelDomainForLocalDatabaseFVM updateListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException})
  async {
    // Update Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await updateListModel.updateListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase =  updateListModel.updateListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> deleteModelToLocalDatabaseThereIsParameterAndDeleteModelToListModelDomainForLocalDatabaseFVM(
      DeleteModelToLocalDatabaseThereIsParameterAndDeleteModelToListModelDomainForLocalDatabaseFVM deleteModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException})
  async {
    // Delete Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await deleteModel.deleteModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase =  deleteModel.deleteModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> deleteListModelToLocalDatabaseThereIsParameterAndDeleteListModelToListModelDomainForLocalDatabaseFVM(
      DeleteListModelToLocalDatabaseThereIsParameterAndDeleteListModelToListModelDomainForLocalDatabaseFVM deleteListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException})
  async {
    // Delete Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await deleteListModel.deleteListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase =  deleteListModel.deleteListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> insertModelToNetworkDatabaseThereIsParameterAndInsertModelToListModelDomainForNetworkDatabaseFVM(
      InsertModelToNetworkDatabaseThereIsParameterAndInsertModelToListModelDomainForNetworkDatabaseFVM insertModel,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException})
  async {
    // Insert Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await insertModel.insertModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertModel.insertModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> insertListModelToNetworkDatabaseThereIsParameterAndInsertListModelToListModelDomainForNetworkDatabaseFVM(
      InsertListModelToNetworkDatabaseThereIsParameterAndInsertListModelToListModelDomainForNetworkDatabaseFVM insertListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    // Insert Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await insertListModel.insertListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertListModel.insertListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> updateModelToNetworkDatabaseThereIsParameterAndUpdateModelToListModelDomainForNetworkDatabaseFVM(
      UpdateModelToNetworkDatabaseThereIsParameterAndUpdateModelToListModelDomainForNetworkDatabaseFVM updateModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    // Update Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await updateModel.updateModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = updateModel.updateModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> updateListModelToNetworkDatabaseThereIsParameterAndUpdateListModelToListModelDomainForNetworkDatabaseFVM(
      UpdateListModelToNetworkDatabaseThereIsParameterAndUpdateListModelToListModelDomainForNetworkDatabaseFVM updateListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    // Update Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await updateListModel.updateListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = updateListModel.updateListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> deleteModelToNetworkDatabaseThereIsParameterAndDeleteModelToListModelDomainForNetworkDatabaseFVM(
      DeleteModelToNetworkDatabaseThereIsParameterAndDeleteModelToListModelDomainForNetworkDatabaseFVM deleteModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    // Delete Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await deleteModel.deleteModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = deleteModel.deleteModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> deleteListModelToNetworkDatabaseThereIsParameterAndDeleteListModelToListModelDomainForNetworkDatabaseFVM(
      DeleteListModelToNetworkDatabaseThereIsParameterAndDeleteListModelToListModelDomainForNetworkDatabaseFVM deleteListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    // Delete Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await deleteListModel.deleteListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = deleteListModel.deleteListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> insertModelToLNDatabaseThereIsParameterAndInsertModelToListModelDomainForLNDatabaseFVM(
      InsertModelToLNDatabaseThereIsParameterAndInsertModelToListModelDomainForLNDatabaseFVM insertModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    // Insert Model FVM
    var resultNetworkDatabase = await insertModel.insertModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForNetworkDatabase = insertModel.insertModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    var resultLocalDatabase = await insertModel.insertModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    var resultListModelDomainForLocalDatabase = insertModel.insertModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> insertListModelToLNDatabaseThereIsParameterAndInsertListModelToListModelDomainForLNDatabaseFVM(
      InsertListModelToLNDatabaseThereIsParameterAndInsertListModelToListModelDomainForLNDatabaseFVM insertListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    // Insert Model FVM
    var resultNetworkDatabase = await insertListModel.insertListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForNetworkDatabase = insertListModel.insertListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    var resultLocalDatabase = await insertListModel.insertListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    var resultListModelDomainForLocalDatabase = insertListModel.insertListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> updateModelToLNDatabaseThereIsParameterAndUpdateModelToListModelDomainForLNDatabaseFVM(
      UpdateModelToLNDatabaseThereIsParameterAndUpdateModelToListModelDomainForLNDatabaseFVM updateModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    // Update Model FVM
    var resultNetworkDatabase = await updateModel.updateModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForNetworkDatabase = updateModel.updateModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    var resultLocalDatabase = await updateModel.updateModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    var resultListModelDomainForLocalDatabase = updateModel.updateModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> updateListModelToLNDatabaseThereIsParameterAndUpdateListModelToListModelDomainForLNDatabaseFVM(
      UpdateListModelToLNDatabaseThereIsParameterAndUpdateListModelToListModelDomainForLNDatabaseFVM updateListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    // Update Model FVM
    var resultNetworkDatabase = await updateListModel.updateListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForNetworkDatabase = updateListModel.updateListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    var resultLocalDatabase = await updateListModel.updateListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    var resultListModelDomainForLocalDatabase = updateListModel.updateListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> deleteModelToLNDatabaseThereIsParameterAndDeleteModelToListModelDomainForLNDatabaseFVM(
      DeleteModelToLNDatabaseThereIsParameterAndDeleteModelToListModelDomainForLNDatabaseFVM deleteModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    // Delete Model FVM
    var resultNetworkDatabase = await deleteModel.deleteModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForNetworkDatabase = deleteModel.deleteModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    var resultLocalDatabase = await deleteModel.deleteModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    var resultListModelDomainForLocalDatabase = deleteModel.deleteModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> deleteListModelToLNDatabaseThereIsParameterAndDeleteListModelToListModelDomainForLNDatabaseFVM(
      DeleteListModelToLNDatabaseThereIsParameterAndDeleteListModelToListModelDomainForLNDatabaseFVM deleteListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException})
  async {
    // Delete Model FVM
    var resultNetworkDatabase = await deleteListModel.deleteListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException
      );
      return;
    }
    var resultListModelDomainForNetworkDatabase = deleteListModel.deleteListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    var resultLocalDatabase = await deleteListModel.deleteListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    var resultListModelDomainForLocalDatabase = deleteListModel.deleteListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
      );
      return;
    }
    functionForResultSuccess();
  }
  
  /* OTHER */
  static void _choiceAllException(
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

  static void _choiceNotNetworkException(
      BaseException baseException,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      )
  {
    if(baseException is DomainException) {
      functionForResultDomainException(baseException);
    } else if(baseException is LocalException) {
      functionForResultLocalException(baseException);
    }
  }

}