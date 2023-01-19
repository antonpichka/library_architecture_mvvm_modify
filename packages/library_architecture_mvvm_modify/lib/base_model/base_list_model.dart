import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';
import 'package:meta/meta.dart';

abstract class BaseListModel<T extends BaseModel> {
  List<T>? listModel;
  ExceptionController exceptionController;
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

  @nonVirtual
  void insertToListModel(
      T model)
  {
    listModel?.add(model);
  }

  @nonVirtual
  void updateToListModel(
      T model)
  {
    listModel?[listModel!.indexWhere((T item) => item.uniqueId == model.uniqueId)] = model;
  }

  @nonVirtual
  void deleteToListModel(
      T model)
  {
    listModel?.removeWhere((T item) => item.uniqueId == model.uniqueId);
  }

  @nonVirtual
  void insertListToListModel(
      List<T> listForInsert)
  {
    listModel?.addAll(listForInsert);
  }

  @nonVirtual
  void updateListToListModel(
      List<T> listForUpdate)
  {
    for(T itemForUpdate in listForUpdate) {
      listModel?[listModel!.indexWhere((T item) => item.uniqueId == itemForUpdate.uniqueId)] = itemForUpdate;
    }
  }

  @nonVirtual
  void deleteListToListModel(
      List<T> listForDelete)
  {
    for(T itemForDelete in listForDelete) {
      listModel?.removeWhere((T item) => item.uniqueId == itemForDelete.uniqueId);
    }
  }
}