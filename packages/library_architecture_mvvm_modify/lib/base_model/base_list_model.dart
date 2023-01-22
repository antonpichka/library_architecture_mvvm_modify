import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';
import 'package:meta/meta.dart';

/// This class is intended for all model lists, where you can control the state of the list itself,
/// and there is also a built-in iterator (and also all ListModels are inherited from it).
/// There is "ExceptionController", in case of an error from the DataSource method,
/// which is in "ModelQNamedServiceViewModel", you do not need to write additional code for the exception,
/// since "BaseListModel" can contain both success and exception
abstract class BaseListModel<T extends BaseModel> {
  /// the list of models
  List<T>? listModel;
  /// if an exception happens then here is "ExceptionController"
  ExceptionController exceptionController;
  /// in the body of the constructor,
  /// you can initialize the map where by the enum key will call the value of the iterator for sort
  @protected
  Map<Enum,BaseIterator<T>>? mapEnumNamedForIteratorAndIterator;

  BaseListModel.success(this.listModel)
      : exceptionController = ExceptionController.success();
  BaseListModel.exception(BaseException exception)
      : exceptionController = ExceptionController.exception(exception);
  BaseListModel.successForFBDS()
      : exceptionController = ExceptionController.success();
  BaseListModel.exceptionForFBDS(LocalException exception)
      : exceptionController = ExceptionController.exception(exception);

  /// Call this method to sort the list of models
  @nonVirtual
  void iteratorForListModel(Enum? enumNamedForIterator) {
    if(mapEnumNamedForIteratorAndIterator!.isEmpty) {
      return;
    }
    BaseIterator<T> iterator = mapEnumNamedForIteratorAndIterator!.values.first;
    if(mapEnumNamedForIteratorAndIterator!.length == 1) {
      iterator.listModel = listModel!;
      listModel = iterator.getSortedListModelParameterListModel;
      return;
    }
    for(Enum itemEnumNamedForIterator in mapEnumNamedForIteratorAndIterator!.keys) {
      if(enumNamedForIterator != itemEnumNamedForIterator) {
        continue;
      }
      iterator = mapEnumNamedForIteratorAndIterator![itemEnumNamedForIterator]!;
      break;
    }
    iterator.listModel = listModel!;
    listModel = iterator.getSortedListModelParameterListModel;
  }

  /// Adding a Model to the Model List
  @nonVirtual
  void insertToListModel(
      T model)
  {
    listModel?.add(model);
  }

  /// Update model in model list
  @nonVirtual
  void updateToListModel(
      T model)
  {
    listModel?[listModel!.indexWhere((T item) => item.uniqueId == model.uniqueId)] = model;
  }

  /// Delete a model in the model list
  @nonVirtual
  void deleteToListModel(
      T model)
  {
    listModel?.removeWhere((T item) => item.uniqueId == model.uniqueId);
  }

  /// Add list to model list
  @nonVirtual
  void insertListToListModel(
      List<T> listForInsert)
  {
    listModel?.addAll(listForInsert);
  }

  /// Update list to model list
  @nonVirtual
  void updateListToListModel(
      List<T> listForUpdate)
  {
    for(T itemForUpdate in listForUpdate) {
      listModel?[listModel!.indexWhere((T item) => item.uniqueId == itemForUpdate.uniqueId)] = itemForUpdate;
    }
  }

  /// Remove list to model list
  @nonVirtual
  void deleteListToListModel(
      List<T> listForDelete)
  {
    for(T itemForDelete in listForDelete) {
      listModel?.removeWhere((T item) => item.uniqueId == itemForDelete.uniqueId);
    }
  }
}