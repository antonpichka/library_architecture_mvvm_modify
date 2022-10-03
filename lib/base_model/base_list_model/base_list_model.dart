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
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/cancel_operation_without_error_and_success.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

class BaseListModel<T extends BaseModel>
{
  List<T> _listModel;
  BaseIterator<T> _iterator;

  BaseListModel(this._listModel);

  @nonVirtual
  List<T> get getListModel {
    return _listModel;
  }

  @nonVirtual
  set setParameterListModel(List<T> listModel) {
    _listModel = listModel;
  }

  set _setParameterIterator(BaseIterator<T> iterator) {
    _iterator = iterator;
    _iterator.setParameterListModel = _listModel;
  }

  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModel(
      Object thisClass,
      BaseTypeParameter<Enum> baseTypeParameterForBaseIterator, 
      Map<Enum,BaseIterator<T>> mapEnumAndBaseIterator)
  {
    if(mapEnumAndBaseIterator.isEmpty) {
      return Response.cancelOperationWithoutErrorAndSuccess(CancelOperationWithoutErrorAndSuccess(thisClass,"MapEnumAndBaseIterator isEmpty"));
    }
    int i = 0;
    Enum selectedEnum = baseTypeParameterForBaseIterator.getParameter;
    Enum itemEnumFirst = mapEnumAndBaseIterator.keys.first;
    for(Enum itemEnum in mapEnumAndBaseIterator.keys) {
      if (selectedEnum == itemEnum) {
        _setParameterIterator = mapEnumAndBaseIterator[itemEnum];
        break;
      }
      if (i >= (mapEnumAndBaseIterator.length-1)) {
        _setParameterIterator = mapEnumAndBaseIterator[itemEnumFirst];
        break;
      }
      i++;
    }
    _listModel = _iterator.getSortedListModel;
    return Response.success(_listModel);
  }

  Response<bool, BaseException> insertListModelToGetListModel(Object thisClass,List<T> listModel)
  {
    _listModel.addAll(listModel);
    return Response.success(true);
  }
  
  Response<bool, BaseException> insertModelToGetListModel(Object thisClass,T model)
  {
    _listModel.add(model);
    return Response.success(true);
  }

  Response<bool, BaseException> updateListModelToGetListModel(Object thisClass,List<T> listModel)
  {
    if(_listModel.isEmpty) {
      return Response.cancelOperationWithoutErrorAndSuccess(CancelOperationWithoutErrorAndSuccess(thisClass,"ListModel isEmpty"));
    }
    for(int i = 0; i < listModel.length; i++) {
      _listModel[_listModel.indexWhere((element) => element.uniqueId == listModel[i].uniqueId)] = listModel[i];
    }
    return Response.success(true);
  }

  Response<bool, BaseException> updateModelToGetListModel(Object thisClass,T model)
  {
    if(_listModel.isEmpty) {
      return Response.cancelOperationWithoutErrorAndSuccess(CancelOperationWithoutErrorAndSuccess(thisClass,"ListModel isEmpty"));
    }
    _listModel[_listModel.indexWhere((element) => element.uniqueId == model.uniqueId)] = model;
    return Response.success(true);
  }

  Response<bool, BaseException> deleteListModelToGetListModel(Object thisClass,List<T> listModel)
  {
    if(_listModel.isEmpty) {
      return Response.cancelOperationWithoutErrorAndSuccess(CancelOperationWithoutErrorAndSuccess(thisClass,"ListModel isEmpty"));
    }
    List<T> listModelForDelete = List.empty(growable: true);
    for(int i = 0; i < _listModel.length; i++) {
      for(int j = 0; j < listModel.length; j++) {
        if(_listModel[i].uniqueId != listModel[j].uniqueId) {
          continue;
        }
        listModelForDelete.add(_listModel[i]);
      }
    }
    for(int i = 0; i < _listModel.length; i++) {
      for(T itemModelForDelete in listModelForDelete) {
        if(_listModel[i].uniqueId != itemModelForDelete.uniqueId) {
          continue;
        }
        _listModel.removeAt(i);
      }
    }
    return Response.success(true);
  }

  Response<bool, BaseException> deleteModelToGetListModel(Object thisClass,T model)
  {
    if(_listModel.isEmpty) {
      return Response.cancelOperationWithoutErrorAndSuccess(CancelOperationWithoutErrorAndSuccess(thisClass,"ListModel isEmpty"));
    }
    _listModel.removeWhere((item) => item.uniqueId == model.uniqueId);
    return Response.success(true);
  }
}