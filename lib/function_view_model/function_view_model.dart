import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
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

class FVM {

  static Future<void> iteratorForListModelLNDatabaseFVM(
      IteratorForListModelLNDatabaseFVM iteratorForListModelLNDatabaseFVM,
      {Function(BaseTypeParameter network,BaseTypeParameter local) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultListModelDomainForNetworkDatabase = iteratorForListModelLNDatabaseFVM
        .callToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
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
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(
        resultListModelDomainForNetworkDatabase.getData,
        resultListModelDomainForLocalDatabase.getData
    );
  }
  
  static Future<void> iteratorForListModelLocalDatabaseFVM(
      IteratorForListModelLocalDatabaseFVM iteratorForListModelLocalDatabaseFVM,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase =  iteratorForListModelLocalDatabaseFVM
        .callToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static Future<void> iteratorForListModelNetworkDatabaseFVM(
      IteratorForListModelNetworkDatabaseFVM iteratorForListModelNetworkDatabaseFVM,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = iteratorForListModelNetworkDatabaseFVM
        .callToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static Future<void> insertModelToLocalDatabaseThereIsParameterFVM(
      InsertModelToLocalDatabaseThereIsParameterFVM insertModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Insert Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await insertModel
        .insertModelToLocalDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultNetworkDatabaseOrLocalDatabase.getData);
  }

  static Future<void> insertListModelToLocalDatabaseThereIsParameterFVM(
      InsertListModelToLocalDatabaseThereIsParameterFVM insertListModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Insert Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await insertListModel
        .insertListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultNetworkDatabaseOrLocalDatabase.getData);
  }

  static void insertModelToListModelDomainForLocalDatabaseFVM(
      InsertModelToListModelDomainForLocalDatabaseFVM insertModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError
      })
  {
    // Insert Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertModel
        .insertModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static void insertListModelToListModelDomainForLocalDatabaseFVM(
      InsertListModelToListModelDomainForLocalDatabaseFVM insertListModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    // Insert Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertListModel
        .insertListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }
  
  static Future<void> updateModelToLocalDatabaseThereIsParameterFVM(
      UpdateModelToLocalDatabaseThereIsParameterFVM updateModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Update Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await updateModel
        .updateModelToLocalDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultNetworkDatabaseOrLocalDatabase.getData);
  }

  static Future<void> updateListModelToLocalDatabaseThereIsParameterFVM(
      UpdateListModelToLocalDatabaseThereIsParameterFVM updateListModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Update Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await updateListModel
        .updateListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultNetworkDatabaseOrLocalDatabase.getData);
  }

  static void updateModelToListModelDomainForLocalDatabaseFVM(
      UpdateModelToListModelDomainForLocalDatabaseFVM updateModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    // Update Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = updateModel
        .updateModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static void updateListModelToListModelDomainForLocalDatabaseFVM(
      UpdateListModelToListModelDomainForLocalDatabaseFVM updateListModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    // Update Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = updateListModel
        .updateListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static Future<void> deleteModelToLocalDatabaseThereIsParameterFVM(
      DeleteModelToLocalDatabaseThereIsParameterFVM deleteModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Delete Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await  deleteModel
        .deleteModelToLocalDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultNetworkDatabaseOrLocalDatabase.getData);
  }

  static Future<void> deleteListModelToLocalDatabaseThereIsParameterFVM(
      DeleteListModelToLocalDatabaseThereIsParameterFVM deleteListModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Delete Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await  deleteListModel
        .deleteListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultNetworkDatabaseOrLocalDatabase.getData);
  }

  static void deleteModelToListModelDomainForLocalDatabaseFVM(
      DeleteModelToListModelDomainForLocalDatabaseFVM deleteModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError}) {
    // Delete Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = deleteModel
        .deleteModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static void deleteListModelToListModelDomainForLocalDatabaseFVM(
      DeleteListModelToListModelDomainForLocalDatabaseFVM deleteListModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError}) {
    // Delete Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = deleteListModel
        .deleteListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static Future<void> getListModelFromLocalDatabaseFVM(
      GetListModelFromLocalDatabaseFVM getListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultNetworkDatabaseOrLocalDatabase = await getListModel
        .callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> getListModelFromLocalDatabaseThereIsParameterFVM(
      GetListModelFromLocalDatabaseThereIsParameterFVM getListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultNetworkDatabaseOrLocalDatabase = await getListModel
        .callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> getModelFromLocalDatabaseThereIsParameterFVM(
      GetModelFromLocalDatabaseThereIsParameterFVM getModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultNetworkDatabaseOrLocalDatabase = await getModel
        .callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> insertModelToNetworkDatabaseThereIsParameterFVM(
      InsertModelToNetworkDatabaseThereIsParameterFVM insertModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Insert Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await insertModel
        .insertModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultNetworkDatabaseOrLocalDatabase.getData);
  }

  static Future<void> insertListModelToNetworkDatabaseThereIsParameterFVM(
      InsertListModelToNetworkDatabaseThereIsParameterFVM insertListModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Insert Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await insertListModel
        .insertListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultNetworkDatabaseOrLocalDatabase.getData);
  }

  static void insertModelToListModelDomainForNetworkDatabaseFVM(
      InsertModelToListModelDomainForNetworkDatabaseFVM insertModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    // Insert Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertModel
        .insertModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static void insertListModelToListModelDomainForNetworkDatabaseFVM(
      InsertListModelToListModelDomainForNetworkDatabaseFVM insertListModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    // Insert Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertListModel
        .insertListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static Future<void> updateModelToNetworkDatabaseThereIsParameterFVM(
      UpdateModelToNetworkDatabaseThereIsParameterFVM updateModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Update Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await updateModel
        .updateModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultNetworkDatabaseOrLocalDatabase.getData);
  }

  static Future<void> updateListModelToNetworkDatabaseThereIsParameterFVM(
      UpdateListModelToNetworkDatabaseThereIsParameterFVM updateListModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Update Model FVM
    var resultNetworkDatabaseOrLocalDatabase = await updateListModel
        .updateListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultNetworkDatabaseOrLocalDatabase.getData);
  }

  static void updateModelToListModelDomainForNetworkDatabaseFVM(
      UpdateModelToListModelDomainForNetworkDatabaseFVM updateModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    // Update Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = updateModel
        .updateModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static void updateListModelToListModelDomainForNetworkDatabaseFVM(
      UpdateListModelToListModelDomainForNetworkDatabaseFVM updateListModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    // Update Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = updateListModel
        .updateListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static Future<void> deleteModelToNetworkDatabaseThereIsParameterFVM(
      DeleteModelToNetworkDatabaseThereIsParameterFVM deleteModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Delete Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await deleteModel
        .deleteModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static Future<void> deleteListModelToNetworkDatabaseThereIsParameterFVM(
      DeleteListModelToNetworkDatabaseThereIsParameterFVM deleteListModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Delete Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await deleteListModel
        .deleteListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static void deleteModelToListModelDomainForNetworkDatabaseFVM(
      DeleteModelToListModelDomainForNetworkDatabaseFVM deleteModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    // Delete Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = deleteModel.deleteModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static void deleteListModelToListModelDomainForNetworkDatabaseFVM(
      DeleteListModelToListModelDomainForNetworkDatabaseFVM deleteModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    // Delete Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = deleteModel.deleteListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static Future<void> getListModelFromNetworkDatabaseFVM(
      GetListModelFromNetworkDatabaseFVM getListModel,
      {Function functionForResultSuccess, 
        Function(DomainException) functionForResultDomainException, 
        Function(LocalException) functionForResultLocalException, 
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultNetworkDatabaseOrLocalDatabase = await getListModel.callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException, 
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> getListModelFromNetworkDatabaseThereIsParameterFVM(
      GetListModelFromNetworkDatabaseThereIsParameterFVM getListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultNetworkDatabaseOrLocalDatabase = await getListModel
        .callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> getModelFromNetworkDatabaseThereIsParameterFVM(
      GetModelFromNetworkDatabaseThereIsParameterFVM getModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultNetworkDatabaseOrLocalDatabase = await getModel
        .callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultNetworkDatabaseOrLocalDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabaseOrLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> insertModelToLNDatabaseThereIsParameterFVM(
      InsertModelToLNDatabaseThereIsParameterFVM insertModel,
      {Function(BaseTypeParameter network, BaseTypeParameter local) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Insert Model FVM
    var resultNetworkDatabase = await insertModel.insertModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultLocalDatabase = await insertModel.insertModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultNetworkDatabase.getData,resultLocalDatabase.getData);
  }

  static Future<void> insertListModelToLNDatabaseThereIsParameterFVM(
      InsertListModelToLNDatabaseThereIsParameterFVM insertListModel,
      {Function(BaseTypeParameter network,BaseTypeParameter local) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Insert Model FVM
    var resultNetworkDatabase = await insertListModel.insertListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultLocalDatabase = await insertListModel.insertListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultNetworkDatabase.getData,resultLocalDatabase.getData);
  }

  static void insertModelToListModelDomainForLNDatabaseFVM(
      InsertModelToListModelDomainForLNDatabaseFVM insertModel,
      {Function(BaseTypeParameter network,BaseTypeParameter local) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    // Insert Model FVM
    var resultListModelDomainForNetworkDatabase = insertModel.insertModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = insertModel.insertModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForNetworkDatabase.getData,resultListModelDomainForLocalDatabase.getData);
  }

  static void insertListModelToListModelDomainForLNDatabaseFVM(
      InsertListModelToListModelDomainForLNDatabaseFVM insertListModel,
      {Function(BaseTypeParameter network,BaseTypeParameter local) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    // Insert Model FVM
    var resultListModelDomainForNetworkDatabase = insertListModel.insertListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = insertListModel.insertListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForNetworkDatabase.getData,resultListModelDomainForLocalDatabase.getData);
  }

  static Future<void> updateModelToLNDatabaseThereIsParameterFVM(
      UpdateModelToLNDatabaseThereIsParameterFVM updateModel,
      {Function(BaseTypeParameter network,BaseTypeParameter local) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Update Model FVM
    var resultNetworkDatabase = await updateModel.updateModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultLocalDatabase = await updateModel.updateModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultNetworkDatabase.getData,resultLocalDatabase.getData);
  }

  static Future<void> updateListModelToLNDatabaseThereIsParameterFVM(
      UpdateListModelToLNDatabaseThereIsParameterFVM updateListModel,
      {Function(BaseTypeParameter network,BaseTypeParameter local) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Update Model FVM
    var resultNetworkDatabase = await updateListModel.updateListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultLocalDatabase = await updateListModel.updateListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultNetworkDatabase.getData,resultLocalDatabase.getData);
  }

  static void updateModelToListModelDomainForLNDatabaseFVM(
      UpdateModelToListModelDomainForLNDatabaseFVM updateModel,
      {Function(BaseTypeParameter network,BaseTypeParameter local) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    // Update Model FVM
    var resultListModelDomainForNetworkDatabase = updateModel.updateModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = updateModel.updateModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForNetworkDatabase.getData,resultListModelDomainForLocalDatabase.getData);
  }

  static void updateListModelToListModelDomainForLNDatabaseFVM(
      UpdateListModelToListModelDomainForLNDatabaseFVM updateListModel,
      {Function(BaseTypeParameter network,BaseTypeParameter local) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    // Update Model FVM
    var resultListModelDomainForNetworkDatabase = updateListModel.updateListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = updateListModel.updateListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForNetworkDatabase.getData,resultListModelDomainForLocalDatabase.getData);
  }

  static Future<void> deleteModelToLNDatabaseThereIsParameterFVM(
      DeleteModelToLNDatabaseThereIsParameterFVM deleteModel,
      {Function(BaseTypeParameter network,BaseTypeParameter local) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Delete Model FVM
    var resultListModelDomainForNetworkDatabase = await deleteModel.deleteModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = await deleteModel.deleteModelToLocalDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForNetworkDatabase.getData,resultListModelDomainForLocalDatabase.getData);
  }

  static Future<void> deleteListModelToLNDatabaseThereIsParameterFVM(
      DeleteListModelToLNDatabaseThereIsParameterFVM deleteListModel,
      {Function(BaseTypeParameter network,BaseTypeParameter local) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Delete Model FVM
    var resultListModelDomainForNetworkDatabase = await deleteListModel.deleteListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = await deleteListModel.deleteListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForNetworkDatabase.getData,resultListModelDomainForLocalDatabase.getData);
  }

  static void deleteModelToListModelDomainForLNDatabaseFVM(
      DeleteModelToListModelDomainForLNDatabaseFVM deleteModel,
      {Function(BaseTypeParameter network,BaseTypeParameter local) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    // Delete Model FVM
    var resultListModelDomainForNetworkDatabase = deleteModel.deleteModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
        resultListModelDomainForNetworkDatabase.getException,
        functionForResultDomainException,
        functionForResultLocalException,
        functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = deleteModel.deleteModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
        resultListModelDomainForLocalDatabase.getException,
        functionForResultDomainException,
        functionForResultLocalException,
        functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForNetworkDatabase.getData,resultListModelDomainForLocalDatabase.getData);
  }

  static void deleteListModelToListModelDomainForLNDatabaseFVM(
      DeleteListModelToListModelDomainForLNDatabaseFVM deleteListModel,
      {Function(BaseTypeParameter network,BaseTypeParameter local) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    // Delete Model FVM
    var resultListModelDomainForNetworkDatabase = deleteListModel.deleteListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
        resultListModelDomainForNetworkDatabase.getException,
        functionForResultDomainException,
        functionForResultLocalException,
        functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = deleteListModel.deleteListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
        resultListModelDomainForLocalDatabase.getException,
        functionForResultDomainException,
        functionForResultLocalException,
        functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultListModelDomainForNetworkDatabase.getData,resultListModelDomainForLocalDatabase.getData);
  }

  static Future<void> getListModelFromLNDatabaseFVM(
      GetListModelFromLNDatabaseFVM getListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultListModelDomainForNetworkDatabase = await getListModel.callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = await getListModel.callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> getListModelFromLNDatabaseThereIsParameterFVM(
      GetListModelFromLNDatabaseThereIsParameterFVM getListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultListModelDomainForNetworkDatabase = await getListModel.callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = await getListModel.callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess();
  }
  
  static Future<void> getModelFromLNDatabaseThereIsParameterFVM(
      GetModelFromLNDatabaseThereIsParameterFVM getModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultListModelDomainForNetworkDatabase = await getModel.callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabase  = await getModel.callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess();
  }

  static Future<void> insertModelToLocalDatabaseThereIsParameterAndInsertModelToListModelDomainForLocalDatabaseFVM(
      InsertModelToLocalDatabaseThereIsParameterAndInsertModelToListModelDomainForLocalDatabaseFVM insertModel,
      {Function(BaseTypeParameter local,BaseTypeParameter localTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Insert Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await insertModel.insertModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertModel.insertModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultLocalDatabaseOrNetworkDatabase.getData,resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static Future<void> insertListModelToLocalDatabaseThereIsParameterAndInsertListModelToListModelDomainForLocalDatabaseFVM(
      InsertListModelToLocalDatabaseThereIsParameterAndInsertListModelToListModelDomainForLocalDatabaseFVM insertListModel,
      {Function(BaseTypeParameter local,BaseTypeParameter localTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Insert Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await insertListModel.insertListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertListModel.insertListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultLocalDatabaseOrNetworkDatabase.getData,resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static Future<void> updateModelToLocalDatabaseThereIsParameterAndUpdateModelToListModelDomainForLocalDatabaseFVM(
      UpdateModelToLocalDatabaseThereIsParameterAndUpdateModelToListModelDomainForLocalDatabaseFVM updateModel,
      {Function(BaseTypeParameter local,BaseTypeParameter localTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Update Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await updateModel.updateModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase =  updateModel.updateModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultLocalDatabaseOrNetworkDatabase.getData,resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static Future<void> updateListModelToLocalDatabaseThereIsParameterAndUpdateListModelToListModelDomainForLocalDatabaseFVM(
      UpdateListModelToLocalDatabaseThereIsParameterAndUpdateListModelToListModelDomainForLocalDatabaseFVM updateListModel,
      {Function(BaseTypeParameter local,BaseTypeParameter localTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Update Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await updateListModel.updateListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase =  updateListModel.updateListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultLocalDatabaseOrNetworkDatabase.getData,resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static Future<void> deleteModelToLocalDatabaseThereIsParameterAndDeleteModelToListModelDomainForLocalDatabaseFVM(
      DeleteModelToLocalDatabaseThereIsParameterAndDeleteModelToListModelDomainForLocalDatabaseFVM deleteModel,
      {Function(BaseTypeParameter local,BaseTypeParameter localTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Delete Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await deleteModel.deleteModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase =  deleteModel.deleteModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultLocalDatabaseOrNetworkDatabase.getData,resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static Future<void> deleteListModelToLocalDatabaseThereIsParameterAndDeleteListModelToListModelDomainForLocalDatabaseFVM(
      DeleteListModelToLocalDatabaseThereIsParameterAndDeleteListModelToListModelDomainForLocalDatabaseFVM deleteListModel,
      {Function(BaseTypeParameter local,BaseTypeParameter localTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Delete Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await deleteListModel.deleteListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase =  deleteListModel.deleteListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultLocalDatabaseOrNetworkDatabase.getData,resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static Future<void> insertModelToNetworkDatabaseThereIsParameterAndInsertModelToListModelDomainForNetworkDatabaseFVM(
      InsertModelToNetworkDatabaseThereIsParameterAndInsertModelToListModelDomainForNetworkDatabaseFVM insertModel,
      {Function(BaseTypeParameter network,BaseTypeParameter networkTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Insert Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await insertModel.insertModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertModel.insertModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultLocalDatabaseOrNetworkDatabase.getData,resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static Future<void> insertListModelToNetworkDatabaseThereIsParameterAndInsertListModelToListModelDomainForNetworkDatabaseFVM(
      InsertListModelToNetworkDatabaseThereIsParameterAndInsertListModelToListModelDomainForNetworkDatabaseFVM insertListModel,
      {Function(BaseTypeParameter network,BaseTypeParameter networkTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Insert Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await insertListModel.insertListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertListModel.insertListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultLocalDatabaseOrNetworkDatabase.getData,resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static Future<void> updateModelToNetworkDatabaseThereIsParameterAndUpdateModelToListModelDomainForNetworkDatabaseFVM(
      UpdateModelToNetworkDatabaseThereIsParameterAndUpdateModelToListModelDomainForNetworkDatabaseFVM updateModel,
      {Function(BaseTypeParameter network,BaseTypeParameter networkTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Update Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await updateModel.updateModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = updateModel.updateModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultLocalDatabaseOrNetworkDatabase.getData,resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static Future<void> updateListModelToNetworkDatabaseThereIsParameterAndUpdateListModelToListModelDomainForNetworkDatabaseFVM(
      UpdateListModelToNetworkDatabaseThereIsParameterAndUpdateListModelToListModelDomainForNetworkDatabaseFVM updateListModel,
      {Function(BaseTypeParameter network,BaseTypeParameter networkTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Update Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await updateListModel.updateListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = updateListModel.updateListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultLocalDatabaseOrNetworkDatabase.getData,resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static Future<void> deleteModelToNetworkDatabaseThereIsParameterAndDeleteModelToListModelDomainForNetworkDatabaseFVM(
      DeleteModelToNetworkDatabaseThereIsParameterAndDeleteModelToListModelDomainForNetworkDatabaseFVM deleteModel,
      {Function(BaseTypeParameter network,BaseTypeParameter networkTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Delete Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await deleteModel.deleteModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = deleteModel.deleteModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultLocalDatabaseOrNetworkDatabase.getData,resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static Future<void> deleteListModelToNetworkDatabaseThereIsParameterAndDeleteListModelToListModelDomainForNetworkDatabaseFVM(
      DeleteListModelToNetworkDatabaseThereIsParameterAndDeleteListModelToListModelDomainForNetworkDatabaseFVM deleteListModel,
      {Function(BaseTypeParameter network,BaseTypeParameter networkTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Delete Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await deleteListModel.deleteListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = deleteListModel.deleteListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(resultLocalDatabaseOrNetworkDatabase.getData,resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
  }

  static Future<void> insertModelToLNDatabaseThereIsParameterAndInsertModelToListModelDomainForLNDatabaseFVM(
      InsertModelToLNDatabaseThereIsParameterAndInsertModelToListModelDomainForLNDatabaseFVM insertModel,
      {Function(BaseTypeParameter network,BaseTypeParameter networkTwo, BaseTypeParameter local, BaseTypeParameter localTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Insert Model FVM
    var resultNetworkDatabase = await insertModel.insertModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForNetworkDatabase = insertModel.insertModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultLocalDatabase = await insertModel.insertModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabase = insertModel.insertModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(
        resultNetworkDatabase.getData,
        resultListModelDomainForNetworkDatabase.getData,
        resultLocalDatabase.getData,
        resultListModelDomainForLocalDatabase.getData
    );
  }

  static Future<void> insertListModelToLNDatabaseThereIsParameterAndInsertListModelToListModelDomainForLNDatabaseFVM(
      InsertListModelToLNDatabaseThereIsParameterAndInsertListModelToListModelDomainForLNDatabaseFVM insertListModel,
      {Function(BaseTypeParameter network,BaseTypeParameter networkTwo, BaseTypeParameter local, BaseTypeParameter localTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Insert Model FVM
    var resultNetworkDatabase = await insertListModel.insertListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForNetworkDatabase = insertListModel.insertListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultLocalDatabase = await insertListModel.insertListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabase = insertListModel.insertListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(
        resultNetworkDatabase.getData,
        resultListModelDomainForNetworkDatabase.getData,
        resultLocalDatabase.getData,
        resultListModelDomainForLocalDatabase.getData
    );
  }

  static Future<void> updateModelToLNDatabaseThereIsParameterAndUpdateModelToListModelDomainForLNDatabaseFVM(
      UpdateModelToLNDatabaseThereIsParameterAndUpdateModelToListModelDomainForLNDatabaseFVM updateModel,
      {Function(BaseTypeParameter network,BaseTypeParameter networkTwo, BaseTypeParameter local, BaseTypeParameter localTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Update Model FVM
    var resultNetworkDatabase = await updateModel.updateModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForNetworkDatabase = updateModel.updateModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultLocalDatabase = await updateModel.updateModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabase = updateModel.updateModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(
        resultNetworkDatabase.getData,
        resultListModelDomainForNetworkDatabase.getData,
        resultLocalDatabase.getData,
        resultListModelDomainForLocalDatabase.getData
    );
  }

  static Future<void> updateListModelToLNDatabaseThereIsParameterAndUpdateListModelToListModelDomainForLNDatabaseFVM(
      UpdateListModelToLNDatabaseThereIsParameterAndUpdateListModelToListModelDomainForLNDatabaseFVM updateListModel,
      {Function(BaseTypeParameter network,BaseTypeParameter networkTwo, BaseTypeParameter local, BaseTypeParameter localTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Update Model FVM
    var resultNetworkDatabase = await updateListModel.updateListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForNetworkDatabase = updateListModel.updateListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultLocalDatabase = await updateListModel.updateListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabase = updateListModel.updateListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(
        resultNetworkDatabase.getData,
        resultListModelDomainForNetworkDatabase.getData,
        resultLocalDatabase.getData,
        resultListModelDomainForLocalDatabase.getData
    );
  }

  static Future<void> deleteModelToLNDatabaseThereIsParameterAndDeleteModelToListModelDomainForLNDatabaseFVM(
      DeleteModelToLNDatabaseThereIsParameterAndDeleteModelToListModelDomainForLNDatabaseFVM deleteModel,
      {Function(BaseTypeParameter network,BaseTypeParameter networkTwo, BaseTypeParameter local, BaseTypeParameter localTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Delete Model FVM
    var resultNetworkDatabase = await deleteModel.deleteModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForNetworkDatabase = deleteModel.deleteModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultLocalDatabase = await deleteModel.deleteModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabase = deleteModel.deleteModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(
        resultNetworkDatabase.getData,
        resultListModelDomainForNetworkDatabase.getData,
        resultLocalDatabase.getData,
        resultListModelDomainForLocalDatabase.getData
    );
  }

  static Future<void> deleteListModelToLNDatabaseThereIsParameterAndDeleteListModelToListModelDomainForLNDatabaseFVM(
      DeleteListModelToLNDatabaseThereIsParameterAndDeleteListModelToListModelDomainForLNDatabaseFVM deleteListModel,
      {Function(BaseTypeParameter network,BaseTypeParameter networkTwo, BaseTypeParameter local, BaseTypeParameter localTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Delete Model FVM
    var resultNetworkDatabase = await deleteListModel.deleteListModelToNetworkDatabaseThereIsParameterFVM();
    if(!resultNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultNetworkDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForNetworkDatabase = deleteListModel.deleteListModelToListModelDomainForNetworkDatabaseFVM();
    if(!resultListModelDomainForNetworkDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultLocalDatabase = await deleteListModel.deleteListModelToLocalDatabaseThereIsParameterFVM();
    if(!resultLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    var resultListModelDomainForLocalDatabase = deleteListModel.deleteListModelToListModelDomainForLocalDatabaseFVM();
    if(!resultListModelDomainForLocalDatabase.isSuccessResponse) {
      _choiceNotNetworkException(
          resultListModelDomainForLocalDatabase.getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    functionForResultSuccess(
        resultNetworkDatabase.getData,
        resultListModelDomainForNetworkDatabase.getData,
        resultLocalDatabase.getData,
        resultListModelDomainForLocalDatabase.getData
    );
  }
  
  /* OTHER */
  static void _choiceAllException(
      BaseException baseException,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException, 
      Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError
      )
  {
    if(baseException is DomainException) {
      if(functionForResultDomainException != null) {
        functionForResultDomainException(baseException);
      }
    } else if(baseException is LocalException) {
      if(functionForResultLocalException != null) {
        functionForResultLocalException(baseException);
      }
    } else if(baseException is NetworkException) {
      if(functionForResultNetworkException != null) {
        functionForResultNetworkException(baseException);
      }
    }
    if(functionForResultBaseExceptionAlwaysFiresOnError != null) {
      functionForResultBaseExceptionAlwaysFiresOnError(baseException);
    }
  }

  static void _choiceNotNetworkException(
      BaseException baseException,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError
      )
  {
    if(baseException is DomainException) {
      if(functionForResultDomainException != null) {
        functionForResultDomainException(baseException);
      }
    } else if(baseException is LocalException) {
      if(functionForResultLocalException != null) {
        functionForResultLocalException(baseException);
      }
    }
    if(functionForResultBaseExceptionAlwaysFiresOnError != null) {
      functionForResultBaseExceptionAlwaysFiresOnError(baseException);
    }
  }

}