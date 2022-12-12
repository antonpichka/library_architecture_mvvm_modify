/*
 * Designed and developed by 2022 JacobOdd (Anton Pichka)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';

abstract class BaseListModel<T extends BaseModel> {
  final Map<Enum,BaseIterator<T>>? _mapEnumNamedForIteratorAndIterator;
  List<T>? _list;
  ExceptionController _exceptionController;
  Enum? _enumNamedForIterator;

  BaseListModel.success(this._list,[this._mapEnumNamedForIteratorAndIterator,this._enumNamedForIterator])
      : _exceptionController = ExceptionController.success();
  BaseListModel.exception(BaseException exception)
      : _exceptionController = ExceptionController.exception(exception),
        _mapEnumNamedForIteratorAndIterator = null;
  BaseListModel.successForFBDS()
      : _exceptionController = ExceptionController.success(),
        _mapEnumNamedForIteratorAndIterator = null;
  BaseListModel.exceptionForFBDS(LocalException exception)
      : _exceptionController = ExceptionController.exception(exception),
        _mapEnumNamedForIteratorAndIterator = null;

  @nonVirtual
  List<T>? get getParameterList => _list;

  @nonVirtual
  ExceptionController get getParameterExceptionController => _exceptionController;

  @nonVirtual
  Enum? get getParameterEnumNamedForIterator => _enumNamedForIterator;

  @nonVirtual
  set setParameterList(List<T>? list) => _list = list;

  @nonVirtual
  set setParameterExceptionController(ExceptionController exceptionController) => _exceptionController = exceptionController;

  @nonVirtual
  set setParameterEnumNamedForIterator(Enum? enumNamedForIterator) => _enumNamedForIterator = enumNamedForIterator;

  @nonVirtual
  void startIteratorForList(
      Object thisClass)
  {
    if(_mapEnumNamedForIteratorAndIterator!.isEmpty) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"MapEnumNamedForIteratorAndIterator isEmpty");
    }
    BaseIterator<T> iterator = _mapEnumNamedForIteratorAndIterator!.values.first;
    if(_mapEnumNamedForIteratorAndIterator!.length == 1) {
      iterator.setParameterList = _list!;
      _list = iterator.getSortedListByParameterList;
      return;
    }
    for(Enum itemEnumNamedForIterator in _mapEnumNamedForIteratorAndIterator!.keys) {
      if(_enumNamedForIterator != itemEnumNamedForIterator) {
        continue;
      }
      iterator = _mapEnumNamedForIteratorAndIterator![itemEnumNamedForIterator]!;
      break;
    }
    iterator.setParameterList = _list!;
    _list = iterator.getSortedListByParameterList;
  }

  @nonVirtual
  void insertToList(
      T model)
  {
    _list?.add(model);
  }

  @nonVirtual
  void updateToList(
      T model)
  {
    _list?[_list!.indexWhere((T item) => item.getParameterUniqueId == model.getParameterUniqueId)] = model;
  }

  @nonVirtual
  void deleteToList(
      T model)
  {
    _list?.removeWhere((T item) => item.getParameterUniqueId == model.getParameterUniqueId);
  }

  @nonVirtual
  void insertListToList(
      List<T> listForInsert)
  {
    _list?.addAll(listForInsert);
  }

  @nonVirtual
  void updateListToList(
      List<T> listForUpdate)
  {
    for(T itemForUpdate in listForUpdate) {
      _list?[_list!.indexWhere((T item) => item.getParameterUniqueId == itemForUpdate.getParameterUniqueId)] = itemForUpdate;
    }
  }

  @nonVirtual
  void deleteListToList(
      List<T> listForDelete)
  {
    for(T itemForDelete in listForDelete) {
      _list?.removeWhere((T item) => item.getParameterUniqueId == itemForDelete.getParameterUniqueId);
    }
  }
}