import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';
import 'package:meta/meta.dart';

abstract class BaseListModel<T extends BaseModel> {
  List<T>? list;
  ExceptionController exceptionController;
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
  void startIteratorForList(
      Object thisClass)
  {
    if(_mapEnumNamedForIteratorAndIterator!.isEmpty) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"MapEnumNamedForIteratorAndIterator isEmpty");
    }
    BaseIterator<T> iterator = _mapEnumNamedForIteratorAndIterator!.values.first;
    if(_mapEnumNamedForIteratorAndIterator!.length == 1) {
      iterator.list = list!;
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
    iterator.list = list!;
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
    list?[list!.indexWhere((T item) => item.uniqueId == model.uniqueId)] = model;
  }

  @nonVirtual
  void deleteToList(
      T model)
  {
    list?.removeWhere((T item) => item.uniqueId == model.uniqueId);
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
      list?[list!.indexWhere((T item) => item.uniqueId == itemForUpdate.uniqueId)] = itemForUpdate;
    }
  }

  @nonVirtual
  void deleteListToList(
      List<T> listForDelete)
  {
    for(T itemForDelete in listForDelete) {
      list?.removeWhere((T item) => item.uniqueId == itemForDelete.uniqueId);
    }
  }
}