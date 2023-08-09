import 'package:library_architecture_mvvm_modify/base_model/base_model_q_named_iterator/base_model_q_named_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';
import 'package:meta/meta.dart';

abstract base class BaseListModel<T extends BaseModel> {
  List<T>? listModel;

  ExceptionController exceptionController;

  @protected
  Map<Enum, BaseModelQNamedIterator<T>>? mapEnumModelIteratorAndModelQNamedIterator;

  BaseListModel.success(this.listModel)
      : exceptionController = ExceptionController.success();
  BaseListModel.exception(BaseException exception)
      : exceptionController = ExceptionController.exception(exception);

  @nonVirtual
  void iteratorForListModel(Enum? enumModelIterator) {
    if (mapEnumModelIteratorAndModelQNamedIterator!.isEmpty) {
      return;
    }
    BaseModelQNamedIterator<T> modelQNamedIterator = mapEnumModelIteratorAndModelQNamedIterator!.values.first;
    if (mapEnumModelIteratorAndModelQNamedIterator!.length == 1) {
      modelQNamedIterator.listModel = listModel!;
      modelQNamedIterator.sortToListModel();
      listModel = modelQNamedIterator.listModel;
      return;
    }
    for (Enum keyEnumModelIterator
        in mapEnumModelIteratorAndModelQNamedIterator!.keys) {
      if (enumModelIterator != keyEnumModelIterator) {
        continue;
      }
      modelQNamedIterator = mapEnumModelIteratorAndModelQNamedIterator![keyEnumModelIterator]!;
      break;
    }
    modelQNamedIterator.listModel = listModel!;
    modelQNamedIterator.sortToListModel();
    listModel = modelQNamedIterator.listModel;
  }

  @nonVirtual
  void insertToListModel(T model) {
    listModel?.add(model);
  }

  @nonVirtual
  void updateToListModel(T model) {
    listModel?[listModel!
        .indexWhere((T item) => item.uniqueId == model.uniqueId)] = model;
  }

  @nonVirtual
  void deleteToListModel(T model) {
    listModel?.removeWhere((T item) => item.uniqueId == model.uniqueId);
  }

  @nonVirtual
  void insertListToListModel(List<T> listForInsert) {
    listModel?.addAll(listForInsert);
  }

  @nonVirtual
  void updateListToListModel(List<T> listForUpdate) {
    for (T itemForUpdate in listForUpdate) {
      listModel?[listModel!.indexWhere(
          (T item) => item.uniqueId == itemForUpdate.uniqueId)] = itemForUpdate;
    }
  }

  @nonVirtual
  void deleteListToListModel(List<T> listForDelete) {
    for (T itemForDelete in listForDelete) {
      listModel
          ?.removeWhere((T item) => item.uniqueId == itemForDelete.uniqueId);
    }
  }
}
