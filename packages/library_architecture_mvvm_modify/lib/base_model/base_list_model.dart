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
  Enum? enumNamedForIterator;
  final Map<Enum,BaseIterator<T>>? _mapEnumNamedForIteratorAndIterator;

  BaseListModel.success(this.listModel,[this.enumNamedForIterator,this._mapEnumNamedForIteratorAndIterator])
      : exceptionController = ExceptionController.success();
  BaseListModel.exception(BaseException exception)
      : exceptionController = ExceptionController.exception(exception),
        _mapEnumNamedForIteratorAndIterator = null;
  BaseListModel.successForFBDS()
      : exceptionController = ExceptionController.success(),
        _mapEnumNamedForIteratorAndIterator = null;
  BaseListModel.exceptionForFBDS(LocalException exception)
      : exceptionController = ExceptionController.exception(exception),
        _mapEnumNamedForIteratorAndIterator = null;

  @nonVirtual
  void startIteratorForListModel() {
    if(_mapEnumNamedForIteratorAndIterator!.isEmpty) {
      return;
    }
    BaseIterator<T> iterator = _mapEnumNamedForIteratorAndIterator!.values.first;
    if(_mapEnumNamedForIteratorAndIterator!.length == 1) {
      iterator.listModel = listModel!;
      listModel = iterator.getSortedListModelParameterListModel;
      return;
    }
    for(Enum itemEnumNamedForIterator in _mapEnumNamedForIteratorAndIterator!.keys) {
      if(enumNamedForIterator != itemEnumNamedForIterator) {
        continue;
      }
      iterator = _mapEnumNamedForIteratorAndIterator![itemEnumNamedForIterator]!;
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