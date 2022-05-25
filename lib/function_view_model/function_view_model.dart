import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_list_model_fvm/delete_list_model_to_list_model_domain_for_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_list_model_fvm/delete_list_model_to_named_database_there_is_parameter_and_delete_list_model_to_list_model_domain_for_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_list_model_fvm/delete_list_model_to_named_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_list_model_domain_for_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_named_database_there_is_parameter_and_delete_model_to_list_model_domain_for_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_named_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_fvm/get_list_model_from_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_there_is_parameter_fvm/get_list_model_from_named_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_model_from_database_there_is_parameter_fvm/get_model_from_named_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_list_model_fvm/insert_list_model_to_list_model_domain_for_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_list_model_fvm/insert_list_model_to_named_database_there_is_parameter_and_insert_list_model_to_list_model_domain_for_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_list_model_fvm/insert_list_model_to_named_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_list_model_domain_for_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_named_database_there_is_parameter_and_insert_model_to_list_model_domain_for_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_named_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/iterator_for_list_model_database_fvm/iterator_for_list_model_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_list_model_fvm/update_list_model_to_list_model_domain_for_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_list_model_fvm/update_list_model_to_named_database_there_is_parameter_and_update_list_model_to_list_model_domain_for_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_list_model_fvm/update_list_model_to_named_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_list_model_domain_for_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_named_database_there_is_parameter_and_update_model_to_list_model_domain_for_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_named_database_there_is_parameter_fvm.dart';

class FVM {

  static Future<void> iteratorForListModelNamedDatabaseFVM(
      IteratorForListModelNamedDatabaseFVM iteratorForListModelNamedDatabaseFVM,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase =  iteratorForListModelNamedDatabaseFVM
        .callToMethodSetIteratorForListModeNamedDatabaseAndSetListModelNamedDatabaseUsingAnIteratorFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
    }
  }

  static Future<void> getListModelFromNamedDatabaseFVM(
      GetListModelFromNamedDatabaseFVM getListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await getListModel
        .callToMethodGetListModelFromNamedDatabaseAndUseTheSettersFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess();
    }
  }

  static Future<void> getListModelFromNamedDatabaseThereIsParameterFVM(
      GetListModelFromNamedDatabaseThereIsParameterFVM getListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await getListModel
        .callToMethodGetListModelFromNamedDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess();
    }
  }

  static Future<void> getModelFromNamedDatabaseThereIsParameterFVM(
      GetModelFromNamedDatabaseThereIsParameterFVM getModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await getModel
        .callToMethodGetModelFromNamedDatabaseThereIsParameterAndUseTheSettersFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess();
    }
  }

  static Future<void> insertModelToNamedDatabaseThereIsParameterFVM(
      InsertModelToNamedDatabaseThereIsParameterFVM insertModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Insert Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await insertModel
        .insertModelToNamedDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
    }
  }

  static Future<void> insertListModelToNamedDatabaseThereIsParameterFVM(
      InsertListModelToNamedDatabaseThereIsParameterFVM insertListModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Insert Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await insertListModel
        .insertListModelToNamedDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
    }
  }

  static void insertModelToListModelDomainForNamedDatabaseFVM(
      InsertModelToListModelDomainForNamedDatabaseFVM insertModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError
      })
  {
    // Insert Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertModel
        .insertModelToListModelDomainForNamedDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
    }
  }

  static void insertListModelToListModelDomainForNamedDatabaseFVM(
      InsertListModelToListModelDomainForNamedDatabaseFVM insertListModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    // Insert Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertListModel
        .insertListModelToListModelDomainForNamedDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
    }
  }
  
  static Future<void> updateModelToNamedDatabaseThereIsParameterFVM(
      UpdateModelToNamedDatabaseThereIsParameterFVM updateModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Update Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await updateModel
        .updateModelToNamedDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
    }
  }

  static Future<void> updateListModelToNamedDatabaseThereIsParameterFVM(
      UpdateListModelToNamedDatabaseThereIsParameterFVM updateListModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Update Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await updateListModel
        .updateListModelToNamedDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
    }
  }

  static void updateModelToListModelDomainForNamedDatabaseFVM(
      UpdateModelToListModelDomainForNamedDatabaseFVM updateModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    // Update Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = updateModel
        .updateModelToListModelDomainForNamedDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
    }
  }

  static void updateListModelToListModelDomainForNamedDatabaseFVM(
      UpdateListModelToListModelDomainForNamedDatabaseFVM updateListModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    // Update Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = updateListModel
        .updateListModelToListModelDomainForNamedDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
    }
  }

  static Future<void> deleteModelToNamedDatabaseThereIsParameterFVM(
      DeleteModelToNamedDatabaseThereIsParameterFVM deleteModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Delete Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await  deleteModel
        .deleteModelToNamedDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
    }
  }

  static Future<void> deleteListModelToNamedDatabaseThereIsParameterFVM(
      DeleteListModelToNamedDatabaseThereIsParameterFVM deleteListModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Delete Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await  deleteListModel
        .deleteListModelToNamedDatabaseThereIsParameterFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
    }
  }

  static void deleteModelToListModelDomainForNamedDatabaseFVM(
      DeleteModelToListModelDomainForNamedDatabaseFVM deleteModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError}) {
    // Delete Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = deleteModel
        .deleteModelToListModelDomainForNamedDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
    }
  }

  static void deleteListModelToListModelDomainForNamedDatabaseFVM(
      DeleteListModelToListModelDomainForNamedDatabaseFVM deleteListModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError}) {
    // Delete Model FVM
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = deleteListModel
        .deleteListModelToListModelDomainForNamedDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
    }
  }

  static Future<void> insertModelToNamedDatabaseThereIsParameterAndInsertModelToListModelDomainForNamedDatabaseFVM(
      InsertModelToNamedDatabaseThereIsParameterAndInsertModelToListModelDomainForNamedDatabaseFVM insertModel,
      {Function(BaseTypeParameter local,BaseTypeParameter localTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Insert Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await insertModel.insertModelToNamedDatabaseThereIsParameterFVM();
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
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertModel.insertModelToListModelDomainForNamedDatabaseFVM();
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
    if(functionForResultSuccess != null) {
      functionForResultSuccess(resultLocalDatabaseOrNetworkDatabase.getData,resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
    }
  }

  static Future<void> insertListModelToNamedDatabaseThereIsParameterAndInsertListModelToListModelDomainForNamedDatabaseFVM(
      InsertListModelToNamedDatabaseThereIsParameterAndInsertListModelToListModelDomainForNamedDatabaseFVM insertListModel,
      {Function(BaseTypeParameter local,BaseTypeParameter localTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Insert Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await insertListModel.insertListModelToNamedDatabaseThereIsParameterFVM();
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
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertListModel.insertListModelToListModelDomainForNamedDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess(resultLocalDatabaseOrNetworkDatabase.getData,resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
    }
  }

  static Future<void> updateModelToNamedDatabaseThereIsParameterAndUpdateModelToListModelDomainForNamedDatabaseFVM(
      UpdateModelToNamedDatabaseThereIsParameterAndUpdateModelToListModelDomainForNamedDatabaseFVM updateModel,
      {Function(BaseTypeParameter local,BaseTypeParameter localTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Update Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await updateModel.updateModelToNamedDatabaseThereIsParameterFVM();
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
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase =  updateModel.updateModelToListModelDomainForNamedDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess(resultLocalDatabaseOrNetworkDatabase.getData,resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
    }
  }

  static Future<void> updateListModelToNamedDatabaseThereIsParameterAndUpdateListModelToListModelDomainForNamedDatabaseFVM(
      UpdateListModelToNamedDatabaseThereIsParameterAndUpdateListModelToListModelDomainForNamedDatabaseFVM updateListModel,
      {Function(BaseTypeParameter local,BaseTypeParameter localTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Update Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await updateListModel.updateListModelToNamedDatabaseThereIsParameterFVM();
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
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase =  updateListModel.updateListModelToListModelDomainForNamedDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess(resultLocalDatabaseOrNetworkDatabase.getData,resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
    }
  }

  static Future<void> deleteModelToNamedDatabaseThereIsParameterAndDeleteModelToListModelDomainForNamedDatabaseFVM(
      DeleteModelToNamedDatabaseThereIsParameterAndDeleteModelToListModelDomainForNamedDatabaseFVM deleteModel,
      {Function(BaseTypeParameter local,BaseTypeParameter localTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Delete Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await deleteModel.deleteModelToNamedDatabaseThereIsParameterFVM();
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
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase =  deleteModel.deleteModelToListModelDomainForNamedDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess(resultLocalDatabaseOrNetworkDatabase.getData,resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
    }
  }

  static Future<void> deleteListModelToNamedDatabaseThereIsParameterAndDeleteListModelToListModelDomainForNamedDatabaseFVM(
      DeleteListModelToNamedDatabaseThereIsParameterAndDeleteListModelToListModelDomainForNamedDatabaseFVM deleteListModel,
      {Function(BaseTypeParameter local,BaseTypeParameter localTwo) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    // Delete Model FVM
    var resultLocalDatabaseOrNetworkDatabase = await deleteListModel.deleteListModelToNamedDatabaseThereIsParameterFVM();
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
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase =  deleteListModel.deleteListModelToListModelDomainForNamedDatabaseFVM();
    if(!resultListModelDomainForLocalDatabaseOrNetworkDatabase.isSuccessResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          functionForResultNetworkException,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess(resultLocalDatabaseOrNetworkDatabase.getData, resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
    }
  }

  static void _choiceAllException(
      BaseException baseException,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException,
      Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError)
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
}