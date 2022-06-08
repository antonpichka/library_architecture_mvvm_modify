import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

class FVM {

  static void iteratorForListModelNamedDatabaseFVM(
      BaseViewModel iteratorForListModelNamedDatabaseFVM,
      {Function(bool) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError}) 
  {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase =  iteratorForListModelNamedDatabaseFVM
        .callToMethodSetIteratorForListModeNamedDatabaseAndSetListModelNamedDatabaseUsingAnIteratorFVM();
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
      _choiceAllException(
          resultListModelDomainForLocalDatabaseOrNetworkDatabase .getException,
          functionForResultDomainException,
          functionForResultLocalException,
          null,
          functionForResultBaseExceptionAlwaysFiresOnError
      );
      return;
    }
    if(functionForResultSuccess != null) {
      functionForResultSuccess(resultListModelDomainForLocalDatabaseOrNetworkDatabase.getData);
    }
  }

  static Future<void> getListModelFromNamedDatabaseFVM(
      BaseViewModel getListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await getListModel
        .callToMethodGetListModelFromNamedDatabaseAndUseTheSettersFVM();
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
      functionForResultSuccess();
    }
  }

  static Future<void> getListModelFromNamedDatabaseThereIsParameterFVM(
      BaseViewModel getListModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await getListModel
        .callToMethodGetListModelFromNamedDatabaseThereIsParameterAndUseTheSettersFVM();
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
      BaseViewModel getModel,
      {Function functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await getModel
        .callToMethodGetModelFromNamedDatabaseThereIsParameterAndUseTheSettersFVM();
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
      BaseViewModel insertModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await insertModel
        .insertModelToNamedDatabaseThereIsParameterFVM();
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
      BaseViewModel insertListModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await insertListModel
        .insertListModelToNamedDatabaseThereIsParameterFVM();
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
      BaseViewModel insertModel,
      {Function(bool) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError
      })
  {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertModel
        .insertModelToListModelDomainForNamedDatabaseFVM();
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
      BaseViewModel insertListModel,
      {Function(bool) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = insertListModel
        .insertListModelToListModelDomainForNamedDatabaseFVM();
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
      BaseViewModel updateModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await updateModel
        .updateModelToNamedDatabaseThereIsParameterFVM();
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
      BaseViewModel updateListModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await updateListModel
        .updateListModelToNamedDatabaseThereIsParameterFVM();
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
      BaseViewModel updateModel,
      {Function(bool) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = updateModel
        .updateModelToListModelDomainForNamedDatabaseFVM();
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
      BaseViewModel updateListModel,
      {Function(bool) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = updateListModel
        .updateListModelToListModelDomainForNamedDatabaseFVM();
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
      BaseViewModel deleteModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await  deleteModel
        .deleteModelToNamedDatabaseThereIsParameterFVM();
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
      BaseViewModel deleteListModel,
      {Function(BaseTypeParameter) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = await  deleteListModel
        .deleteListModelToNamedDatabaseThereIsParameterFVM();
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
      BaseViewModel deleteModel,
      {Function(bool) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = deleteModel
        .deleteModelToListModelDomainForNamedDatabaseFVM();
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
      BaseViewModel deleteListModel,
      {Function(bool) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  {
    var resultListModelDomainForLocalDatabaseOrNetworkDatabase = deleteListModel
        .deleteListModelToListModelDomainForNamedDatabaseFVM();
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
      BaseViewModel insertModel,
      {Function(BaseTypeParameter resultDataSource,bool resultViewModel) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultLocalDatabaseOrNetworkDatabase = await insertModel.insertModelToNamedDatabaseThereIsParameterFVM();
    if(resultLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
      BaseViewModel insertListModel,
      {Function(BaseTypeParameter resultDataSource,bool resultViewModel) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultLocalDatabaseOrNetworkDatabase = await insertListModel.insertListModelToNamedDatabaseThereIsParameterFVM();
    if(resultLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
      BaseViewModel updateModel,
      {Function(BaseTypeParameter resultDataSource,bool resultViewModel) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultLocalDatabaseOrNetworkDatabase = await updateModel.updateModelToNamedDatabaseThereIsParameterFVM();
    if(resultLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
      BaseViewModel updateListModel,
      {Function(BaseTypeParameter resultDataSource,bool resultViewModel) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultLocalDatabaseOrNetworkDatabase = await updateListModel.updateListModelToNamedDatabaseThereIsParameterFVM();
    if(resultLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
      BaseViewModel deleteModel,
      {Function(BaseTypeParameter resultDataSource,bool resultViewModel) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultLocalDatabaseOrNetworkDatabase = await deleteModel.deleteModelToNamedDatabaseThereIsParameterFVM();
    if(resultLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
      BaseViewModel deleteListModel,
      {Function(BaseTypeParameter resultDataSource,bool resultViewModel) functionForResultSuccess,
        Function(DomainException) functionForResultDomainException,
        Function(LocalException) functionForResultLocalException,
        Function(NetworkException) functionForResultNetworkException,
        Function(BaseException) functionForResultBaseExceptionAlwaysFiresOnError})
  async {
    var resultLocalDatabaseOrNetworkDatabase = await deleteListModel.deleteListModelToNamedDatabaseThereIsParameterFVM();
    if(resultLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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
    if(resultListModelDomainForLocalDatabaseOrNetworkDatabase.isExceptionResponse) {
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