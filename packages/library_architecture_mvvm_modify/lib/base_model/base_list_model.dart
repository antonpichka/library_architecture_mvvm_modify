import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';

abstract class BaseListModel<T extends BaseModel> {
  @protected
  List<T>? list;
  @protected
  ExceptionController exceptionController;
  @protected
  Enum? enumNamedForIterator;
  final Map<Enum,BaseIterator<T>>? _mapEnumNamedForIteratorAndIterator;

  BaseListModel.success(this.list,[this._mapEnumNamedForIteratorAndIterator,this.enumNamedForIterator])
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
  List<T>? get getParameterList => list;
  @nonVirtual
  ExceptionController get getParameterExceptionController => exceptionController;

  @nonVirtual
  set setParameterList(List<T> list) => this.list = list;
  @nonVirtual
  set setParameterExceptionController(ExceptionController exceptionController) => this.exceptionController = exceptionController;

  @nonVirtual
  void startIteratorForList(
      Object thisClass)
  {
    if(_mapEnumNamedForIteratorAndIterator!.isEmpty) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"MapEnumNamedForIteratorAndIterator isEmpty");
    }
    BaseIterator<T> iterator = _mapEnumNamedForIteratorAndIterator!.values.first;
    if(_mapEnumNamedForIteratorAndIterator!.length == 1) {
      iterator.setParameterList = list!;
      list = iterator.getSortedListByParameterList;
      return;
    }
    for(Enum itemEnumNamedForIterator in _mapEnumNamedForIteratorAndIterator!.keys) {
      if(enumNamedForIterator != itemEnumNamedForIterator) {
        continue;
      }
      iterator = _mapEnumNamedForIteratorAndIterator![itemEnumNamedForIterator]!;
      break;
    }
    iterator.setParameterList = list!;
    list = iterator.getSortedListByParameterList;
  }

  @nonVirtual
  void insertToList(
      T model)
  {
    list?.add(model);
  }

  @nonVirtual
  void updateToList(
      T model)
  {
    list?[list!.indexWhere((T item) => item.getParameterUniqueId == model.getParameterUniqueId)] = model;
  }

  @nonVirtual
  void deleteToList(
      T model)
  {
    list?.removeWhere((T item) => item.getParameterUniqueId == model.getParameterUniqueId);
  }

  @nonVirtual
  void insertListToList(
      List<T> listForInsert)
  {
    list?.addAll(listForInsert);
  }

  @nonVirtual
  void updateListToList(
      List<T> listForUpdate)
  {
    for(T itemForUpdate in listForUpdate) {
      list?[list!.indexWhere((T item) => item.getParameterUniqueId == itemForUpdate.getParameterUniqueId)] = itemForUpdate;
    }
  }

  @nonVirtual
  void deleteListToList(
      List<T> listForDelete)
  {
    for(T itemForDelete in listForDelete) {
      list?.removeWhere((T item) => item.getParameterUniqueId == itemForDelete.getParameterUniqueId);
    }
  }
}