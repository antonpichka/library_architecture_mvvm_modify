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
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/base_model_named.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/cancel_operation_without_exception_and_success/cancel_operation_without_exception_and_success.dart';
import 'package:library_architecture_mvvm_modify/response/response.dart';

class BaseListModelNamed<T extends BaseModelNamed>
{
  List<T> listModelNamed;
  BaseIterator<T> _iterator;

  BaseListModelNamed(this.listModelNamed);

  @nonVirtual
  set setParameterListModelNamed(
      List<T> listModelNamed)
  {
    this.listModelNamed = listModelNamed;
  }

  set _setParameterIterator(
      BaseIterator<T> iterator)
  {
    _iterator = iterator;
    _iterator.setParameterListModelNamed = listModelNamed;
  }

  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModelNamed(
      Object thisClass,
      BaseTypeParameter<Enum> typeParameterForBaseIterator,
      Map<Enum,BaseIterator<T>> mapEnumAndBaseIterator)
  {
    if(mapEnumAndBaseIterator.isEmpty) {
      return Response.cancelOperationWithoutExceptionAndSuccess(
          CancelOperationWithoutExceptionAndSuccess(thisClass,"MapEnumAndBaseIterator isEmpty"));
    }
    int iteration = 0;
    Enum selectedEnumByTypeParameterForBaseIterator = typeParameterForBaseIterator.getParameter;
    Enum firstItemEnumByMap = mapEnumAndBaseIterator.keys.first;
    for(Enum itemEnum in mapEnumAndBaseIterator.keys) {
      if(selectedEnumByTypeParameterForBaseIterator == itemEnum) {
        _setParameterIterator = mapEnumAndBaseIterator[itemEnum];
        break;
      }
      if(iteration >= (mapEnumAndBaseIterator.length-1)) {
        _setParameterIterator = mapEnumAndBaseIterator[firstItemEnumByMap];
        break;
      }
      iteration++;
    }
    setParameterListModelNamed = _iterator.getSortedListModelNamed;
    return Response.success(listModelNamed);
  }
  
  Response<bool, BaseException> insertModelNamedToGetListModelNamed(
      Object thisClass,
      T model)
  {
    listModelNamed.add(model);
    return Response.success(true);
  }

  Response<bool, BaseException> updateModelNamedToGetListModelNamed(
      Object thisClass,
      T model)
  {
    listModelNamed[listModelNamed.indexWhere((item) => item.uniqueId == model.uniqueId)] = model;
    return Response.success(true);
  }

  Response<bool, BaseException> deleteModelNamedToGetListModelNamed(
      Object thisClass,
      T model)
  {
    listModelNamed.removeWhere((item) => item.uniqueId == model.uniqueId);
    return Response.success(true);
  }

  Response<bool, BaseException> insertListModelNamedToGetListModelNamed(
      Object thisClass,
      List<T> listModelNamed)
  {
    if(listModelNamed.isEmpty) {
      return Response.cancelOperationWithoutExceptionAndSuccess(
          CancelOperationWithoutExceptionAndSuccess(thisClass,"ListModel isEmpty"));
    }
    this.listModelNamed.addAll(listModelNamed);
    return Response.success(true);
  }

  Response<bool, BaseException> updateListModelNamedToGetListModelNamed(
      Object thisClass,
      List<T> listModelNamed)
  {
    if(listModelNamed.isEmpty) {
      return Response.cancelOperationWithoutExceptionAndSuccess(
          CancelOperationWithoutExceptionAndSuccess(thisClass,"ListModel isEmpty"));
    }
    for(int i = 0; i < listModelNamed.length; i++) {
      this.listModelNamed[this.listModelNamed.indexWhere((element) => element.uniqueId == listModelNamed[i].uniqueId)] = listModelNamed[i];
    }
    return Response.success(true);
  }


  Response<bool, BaseException> deleteListModelNamedToGetListModelNamed(
      Object thisClass,
      List<T> listModelNamed)
  {
    if(listModelNamed.isEmpty) {
      return Response.cancelOperationWithoutExceptionAndSuccess(
          CancelOperationWithoutExceptionAndSuccess(thisClass,"ListModel isEmpty"));
    }
    List<T> listModelForDelete = List.empty(growable: true);
    for(int i = 0; i < this.listModelNamed.length; i++) {
      for(int j = 0; j < listModelNamed.length; j++) {
        if(this.listModelNamed[i].uniqueId != listModelNamed[j].uniqueId) {
          continue;
        }
        listModelForDelete.add(this.listModelNamed[i]);
      }
    }
    for(int i = 0; i < this.listModelNamed.length; i++) {
      for(T itemModelForDelete in listModelForDelete) {
        if(this.listModelNamed[i].uniqueId != itemModelForDelete.uniqueId) {
          continue;
        }
        this.listModelNamed.removeAt(i);
      }
    }
    return Response.success(true);
  }
}