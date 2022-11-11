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
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/base_model_named.dart';

class BaseListModelNamed<T extends BaseModelNamed> {
  List<T> listModelNamed;
  BaseException exception;
  final Map<Enum,BaseIterator<T>> _mapEnumAndIterator = {};
  BaseIterator<T> _iterator;
  Enum _enumForIteratorSelection;

  BaseListModelNamed.success(this.listModelNamed);
  BaseListModelNamed.exception(this.exception);

  @protected
  @nonVirtual
  List<T> runIteratorForListModelNamed(
      Object thisClass)
  {
    if(_mapEnumAndIterator.isEmpty) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"MapEnumAndBaseIterator isEmpty");
    }
    int iteration = 0;
    Enum firstItemEnumByMap = _mapEnumAndIterator.keys.first;
    for(Enum itemEnum in _mapEnumAndIterator.keys) {
      if(_enumForIteratorSelection == itemEnum) {
        _setParameterIterator = _mapEnumAndIterator[itemEnum];
        break;
      }
      if(iteration >= (_mapEnumAndIterator.length-1)) {
        _setParameterIterator = _mapEnumAndIterator[firstItemEnumByMap];
        break;
      }
      iteration++;
    }
    setParameterListModelNamed = _iterator.getSortedListModelNamed;
    return listModelNamed;
  }

  @nonVirtual
  set setParameterException(
      BaseException exception)
  {
    this.exception = exception;
  }

  @protected
  @nonVirtual
  set setParameterListModelNamed(
      List<T> listModelNamed)
  {
    this.listModelNamed = listModelNamed;
  }

  @protected
  @nonVirtual
  void setEnumAndIteratorToMap(
      Enum key,
      BaseIterator<T> iterator)
  {
    _mapEnumAndIterator[key] = iterator;
  }

  @protected
  @nonVirtual
  set setEnumForIteratorSelection(
      Enum enumForIteratorSelection)
  {
    _enumForIteratorSelection = enumForIteratorSelection;
  }

  set _setParameterIterator(
      BaseIterator<T> iterator)
  {
    _iterator = iterator;
    _iterator.setParameterListModelNamed = listModelNamed;
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
  bool insertModelNamedToList(
      Object thisClass,
      T modelNamed)
  {
    listModelNamed.add(modelNamed);
    return true;
  }

  @protected
  @nonVirtual
  bool updateModelNamedToList(
      Object thisClass,
      T modelNamed)
  {
    listModelNamed[listModelNamed.indexWhere((item) => item.uniqueId == modelNamed.uniqueId)] = modelNamed;
    return true;
  }

  @protected
  @nonVirtual
  bool deleteModelNamedToList(
      Object thisClass,
      T modelNamed)
  {
    listModelNamed.removeWhere((item) => item.uniqueId == modelNamed.uniqueId);
    return true;
  }

  @protected
  @nonVirtual
  bool insertListModelNamedToList(
      Object thisClass,
      List<T> listModelNamed)
  {
    if(listModelNamed.isEmpty) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"ListModelNamed isEmpty");
    }
    this.listModelNamed.addAll(listModelNamed);
    return true;
  }

  @protected
  @nonVirtual
  bool updateListModelNamedToList(
      Object thisClass,
      List<T> listModelNamed)
  {
    if(listModelNamed.isEmpty) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"ListModelNamed isEmpty");
    }
    for(int i = 0; i < listModelNamed.length; i++) {
      this.listModelNamed[this.listModelNamed.indexWhere((element) => element.uniqueId == listModelNamed[i].uniqueId)] = listModelNamed[i];
    }
    return true;
  }

  @protected
  @nonVirtual
  bool deleteListModelNamedToList(
      Object thisClass,
      List<T> listModelNamed)
  {
    if(listModelNamed.isEmpty) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"ListModelNamed isEmpty");
    }
    List<T> listModelNamedForDelete = List.empty(growable: true);
    for(int i = 0; i < this.listModelNamed.length; i++) {
      for(int j = 0; j < listModelNamed.length; j++) {
        if(this.listModelNamed[i].uniqueId != listModelNamed[j].uniqueId) {
          continue;
        }
        listModelNamedForDelete.add(this.listModelNamed[i]);
      }
    }
    for(int i = 0; i < this.listModelNamed.length; i++) {
      for(int j = 0; j < listModelNamedForDelete.length; j++) {
        if(this.listModelNamed[i].uniqueId != listModelNamedForDelete[j].uniqueId) {
          continue;
        }
        this.listModelNamed.removeAt(i);
      }
    }
    return true;
  }
}