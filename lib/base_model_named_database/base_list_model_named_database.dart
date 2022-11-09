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
import 'package:library_architecture_mvvm_modify/base_model_named_database/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/cancel_operation_without_exception_and_success/cancel_operation_without_exception_and_success.dart';
import 'package:library_architecture_mvvm_modify/response/response.dart';

class BaseListModelNamedDatabase<T extends BaseModelNamedDatabase>
{
  List<T> listModelNamedDatabase;
  BaseIterator<T> _iterator;

  BaseListModelNamedDatabase(this.listModelNamedDatabase);

  @nonVirtual
  set setParameterListModelNamedDatabase(
      List<T> listModelNamedDatabase)
  {
    this.listModelNamedDatabase = listModelNamedDatabase;
  }

  set _setParameterIterator(
      BaseIterator<T> iterator)
  {
    _iterator = iterator;
    _iterator.setParameterListModelNamedDatabase = listModelNamedDatabase;
  }

  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModelNamedDatabase(
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
    setParameterListModelNamedDatabase = _iterator.getSortedListModelNamedDatabase;
    return Response.success(listModelNamedDatabase);
  }
  
  Response<bool, BaseException> insertModelNamedDatabaseToGetListModelNamedDatabase(
      Object thisClass,
      T model)
  {
    listModelNamedDatabase.add(model);
    return Response.success(true);
  }

  Response<bool, BaseException> updateModelNamedDatabaseToGetListModelNamedDatabase(
      Object thisClass,
      T model)
  {
    listModelNamedDatabase[listModelNamedDatabase.indexWhere((item) => item.uniqueId == model.uniqueId)] = model;
    return Response.success(true);
  }

  Response<bool, BaseException> deleteModelNamedDatabaseToGetListModelNamedDatabase(
      Object thisClass,
      T model)
  {
    listModelNamedDatabase.removeWhere((item) => item.uniqueId == model.uniqueId);
    return Response.success(true);
  }

  Response<bool, BaseException> insertListModelNamedDatabaseToGetListModelNamedDatabase(
      Object thisClass,
      List<T> listModelNamedDatabase)
  {
    if(listModelNamedDatabase.isEmpty) {
      return Response.cancelOperationWithoutExceptionAndSuccess(
          CancelOperationWithoutExceptionAndSuccess(thisClass,"ListModel isEmpty"));
    }
    this.listModelNamedDatabase.addAll(listModelNamedDatabase);
    return Response.success(true);
  }

  Response<bool, BaseException> updateListModelNamedDatabaseToGetListModelNamedDatabase(
      Object thisClass,
      List<T> listModelNamedDatabase)
  {
    if(listModelNamedDatabase.isEmpty) {
      return Response.cancelOperationWithoutExceptionAndSuccess(
          CancelOperationWithoutExceptionAndSuccess(thisClass,"ListModel isEmpty"));
    }
    for(int i = 0; i < listModelNamedDatabase.length; i++) {
      this.listModelNamedDatabase[this.listModelNamedDatabase.indexWhere((element) => element.uniqueId == listModelNamedDatabase[i].uniqueId)] = listModelNamedDatabase[i];
    }
    return Response.success(true);
  }


  Response<bool, BaseException> deleteListModelNamedDatabaseToGetListModelNamedDatabase(
      Object thisClass,
      List<T> listModelNamedDatabase)
  {
    if(listModelNamedDatabase.isEmpty) {
      return Response.cancelOperationWithoutExceptionAndSuccess(
          CancelOperationWithoutExceptionAndSuccess(thisClass,"ListModel isEmpty"));
    }
    List<T> listModelForDelete = List.empty(growable: true);
    for(int i = 0; i < this.listModelNamedDatabase.length; i++) {
      for(int j = 0; j < listModelNamedDatabase.length; j++) {
        if(this.listModelNamedDatabase[i].uniqueId != listModelNamedDatabase[j].uniqueId) {
          continue;
        }
        listModelForDelete.add(this.listModelNamedDatabase[i]);
      }
    }
    for(int i = 0; i < this.listModelNamedDatabase.length; i++) {
      for(T itemModelForDelete in listModelForDelete) {
        if(this.listModelNamedDatabase[i].uniqueId != itemModelForDelete.uniqueId) {
          continue;
        }
        this.listModelNamedDatabase.removeAt(i);
      }
    }
    return Response.success(true);
  }
}