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
import 'package:library_architecture_mvvm_modify/utility/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';

class BaseListModel<T extends BaseModel> {
  List<T> list;
  ExceptionController exceptionController;
  Map<Enum,BaseIterator<T>> _mapEnumNamedForIteratorAndIterator;
  Enum _enumNamedForIterator;

  BaseListModel.success(this.list,[this._mapEnumNamedForIteratorAndIterator,this._enumNamedForIterator])
      : exceptionController = ExceptionController.success();
  BaseListModel.exception(BaseException exception)
      : exceptionController = ExceptionController.exception(exception);

  @nonVirtual
  set setParameterList(
      List<T> list)
  {
    this.list = list;
  }

  @nonVirtual
  set setParameterExceptionController(
      ExceptionController exceptionController)
  {
    this.exceptionController = exceptionController;
  }

  @protected
  @nonVirtual
  set setParameterEnumNamedForIterator(
      Enum enumNamedForIterator)
  {
    _enumNamedForIterator = enumNamedForIterator;
  }

  @nonVirtual
  void startIteratorForList(
      Object thisClass)
  {
    if(_mapEnumNamedForIteratorAndIterator.isEmpty) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"MapEnumNamedForIteratorAndIterator isEmpty");
    }
    BaseIterator<T> iterator = _mapEnumNamedForIteratorAndIterator.values.first;
    if(_mapEnumNamedForIteratorAndIterator.length == 1) {
      iterator.setParameterList = list;
      setParameterList = iterator.getSortedList;
      return;
    }
    for(Enum itemEnumNamedForIterator in _mapEnumNamedForIteratorAndIterator.keys) {
      if(_enumNamedForIterator != itemEnumNamedForIterator) {
        continue;
      }
      iterator = _mapEnumNamedForIteratorAndIterator[itemEnumNamedForIterator];
      break;
    }
    iterator.setParameterList = list;
    setParameterList = iterator.getSortedList;
  }

  @nonVirtual
  void insertToList(
      T model)
  {
    list.add(model);
  }

  @nonVirtual
  void updateToList(
      T model)
  {
    list[list.indexWhere((item) => item.uniqueId == model.uniqueId)] = model;
  }

  @nonVirtual
  void deleteToList(
      T model)
  {
    list.removeWhere((item) => item.uniqueId == model.uniqueId);
  }

  @nonVirtual
  void insertListToList(
      List<T> listForInsert)
  {
    list.addAll(listForInsert);
  }

  @nonVirtual
  void updateListToList(
      List<T> listForUpdate)
  {
    for(int i = 0; i < listForUpdate.length; i++) {
      list[list.indexWhere((element) => element.uniqueId == listForUpdate[i].uniqueId)] = listForUpdate[i];
    }
  }

  @nonVirtual
  void deleteListToList(
      List<T> listForDelete)
  {
    for(int i = 0; i < listForDelete.length; i++) {
      list.removeWhere((element) => element.uniqueId == listForDelete[i].uniqueId);
    }
  }
}