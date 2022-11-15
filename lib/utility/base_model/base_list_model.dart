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

class BaseListModel<T extends BaseModel> {
  List<T> listModel;
  BaseException exception;
  BaseIterator<T> _iterator;
  Enum _enumNamedForIteratorSelection;
  Map<Enum,BaseIterator<T>> _mapEnumNamedForIteratorAndIterator;

  BaseListModel.success(this.listModel,[this._mapEnumNamedForIteratorAndIterator]);
  BaseListModel.exception(this.exception);

  @protected
  @nonVirtual
  List<T> runIteratorForListModel(
      Object thisClass)
  {
    if(_mapEnumNamedForIteratorAndIterator.isEmpty) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"MapEnumNamedForIteratorAndIterator isEmpty");
    }
    int iteration = 0;
    Enum firstItemEnumByMap = _mapEnumNamedForIteratorAndIterator.keys.first;
    for(Enum itemEnumNamedForIterator in _mapEnumNamedForIteratorAndIterator.keys) {
      if(_enumNamedForIteratorSelection == itemEnumNamedForIterator) {
        _setParameterIterator = _mapEnumNamedForIteratorAndIterator[itemEnumNamedForIterator];
        break;
      }
      if(iteration >= (_mapEnumNamedForIteratorAndIterator.length-1)) {
        _setParameterIterator = _mapEnumNamedForIteratorAndIterator[firstItemEnumByMap];
        break;
      }
      iteration++;
    }
    setParameterListModel = _iterator.getSortedListModel;
    return listModel;
  }

  @nonVirtual
  set setParameterListModel(
      List<T> listModel)
  {
    this.listModel = listModel;
  }

  @nonVirtual
  set setParameterException(
      BaseException exception)
  {
    this.exception = exception;
  }

  @protected
  @nonVirtual
  set setEnumNamedForIteratorSelection(
      Enum enumNamedForIteratorSelection)
  {
    _enumNamedForIteratorSelection = enumNamedForIteratorSelection;
  }

  set _setParameterIterator(
      BaseIterator<T> iterator)
  {
    _iterator = iterator;
    _iterator.setParameterListModel = listModel;
  }

  @nonVirtual
  bool isExceptionNotNull() {
    if(exception == null) {
      return false;
    }
    return true;
  }

  @protected
  @nonVirtual
  bool insertModelToList(
      Object thisClass,
      T model)
  {
    listModel.add(model);
    return true;
  }

  @protected
  @nonVirtual
  bool updateModelToList(
      Object thisClass,
      T model)
  {
    listModel[listModel.indexWhere((item) => item.uniqueId == model.uniqueId)] = model;
    return true;
  }

  @protected
  @nonVirtual
  bool deleteModelToList(
      Object thisClass,
      T model)
  {
    listModel.removeWhere((item) => item.uniqueId == model.uniqueId);
    return true;
  }

  @protected
  @nonVirtual
  bool insertListModelToList(
      Object thisClass,
      List<T> listModelForInsert)
  {
    if(listModelForInsert.isEmpty) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"ListModelNamed isEmpty");
    }
    listModel.addAll(listModelForInsert);
    return true;
  }

  @protected
  @nonVirtual
  bool updateListModelToList(
      Object thisClass,
      List<T> listModelForUpdate)
  {
    if(listModelForUpdate.isEmpty) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"ListModelNamed isEmpty");
    }
    for(int i = 0; i < listModelForUpdate.length; i++) {
      listModel[listModel.indexWhere((element) => element.uniqueId == listModelForUpdate[i].uniqueId)] = listModelForUpdate[i];
    }
    return true;
  }

  @protected
  @nonVirtual
  bool deleteListModelToList(
      Object thisClass,
      List<T> listModelForIterativeOverElements)
  {
    if(listModelForIterativeOverElements.isEmpty) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"ListModelNamed isEmpty");
    }
    List<T> listModelForDelete = List.empty(growable: true);
    for(int i = 0; i < listModel.length; i++) {
      for(int j = 0; j < listModelForIterativeOverElements.length; j++) {
        if(listModel[i].uniqueId != listModelForIterativeOverElements[j].uniqueId) {
          continue;
        }
        listModelForDelete.add(listModel[i]);
      }
    }
    for(int i = 0; i < listModel.length; i++) {
      for(int j = 0; j < listModelForDelete.length; j++) {
        if(listModel[i].uniqueId != listModelForDelete[j].uniqueId) {
          continue;
        }
        listModel.removeAt(i);
      }
    }
    return true;
  }
}