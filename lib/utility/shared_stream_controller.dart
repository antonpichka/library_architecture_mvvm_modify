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

import 'dart:async';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/cancel_operation_without_exception_and_success/cancel_operation_without_exception_and_success.dart';
import 'constants.dart';

/*
  initialize only in view classes
 */
class SharedStreamController {
  static Map<Type,Map<Type,Map<Type,BaseModel>>> _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndModel = {};
  static Map<Type,Map<Type,Map<Type,StreamController<BaseModel>>>> _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndStreamControllerForModel = {};

  static Map<Type,Map<Type,BaseModel>> _mapTypeViewAndMapTypeModelAndModel = {};
  static Map<Type,Map<Type,StreamController<BaseModel>>> _mapTypeViewAndMapTypeModelAndStreamControllerForModel = {};

  /*
     call to main.dart or to main_view.dart to method initState();
   */
  static void setMapForViewAndWidget(
      {Map<Type,Map<Type,Map<Type,BaseModel>>> mapModelForWidget,
      Map<Type,Map<Type,Map<Type,StreamController<BaseModel>>>> mapStreamControllerForModelForWidget,
      Map<Type,Map<Type,BaseModel>> mapModelForView,
      Map<Type,Map<Type,StreamController<BaseModel>>> mapStreamControllerForModelForView})
  {
    _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndModel = mapModelForWidget;
    _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndStreamControllerForModel = mapStreamControllerForModelForWidget;
    _mapTypeViewAndMapTypeModelAndModel = mapModelForView;
    _mapTypeViewAndMapTypeModelAndStreamControllerForModel = mapStreamControllerForModelForView;
  }

  /*
     call to main_view.dart to method dispose();
   */
  static void dispose() {
    _disposeForWidget();
    _disposeForView();
  }

  static void _disposeForWidget() {
    if(_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndStreamControllerForModel == null) {
      return;
    }
    Iterator<Map<Type,Map<Type,StreamController<BaseModel>>>> iteratorMapTypeWidgetAndMapTypeModelAndStreamControllerForBaseModel = _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndStreamControllerForModel.values.iterator;
    while(iteratorMapTypeWidgetAndMapTypeModelAndStreamControllerForBaseModel.moveNext()) {
      Iterator<Map<Type,StreamController<BaseModel>>> iteratorMapTypeModelAndStreamControllerForBaseModel =  iteratorMapTypeWidgetAndMapTypeModelAndStreamControllerForBaseModel.current.values.iterator;
      while(iteratorMapTypeModelAndStreamControllerForBaseModel.moveNext()) {
        Iterator<StreamController<BaseModel>> iteratorStreamControllerForBaseModel  = iteratorMapTypeModelAndStreamControllerForBaseModel.current.values.iterator;
        while(iteratorStreamControllerForBaseModel.moveNext()) {
          StreamController<BaseModel> streamControllerForBaseModel = iteratorStreamControllerForBaseModel.current;
          if(streamControllerForBaseModel == null) {
            continue;
          }
          if(streamControllerForBaseModel.isClosed) {
            continue;
          }
          streamControllerForBaseModel.close();
        }
      }
    }
  }

  static void _disposeForView() {
    if(_mapTypeViewAndMapTypeModelAndStreamControllerForModel == null) {
      return;
    }
    Iterator<Map<Type,StreamController<BaseModel>>> iteratorMapTypeModelAndStreamControllerForBaseModel = _mapTypeViewAndMapTypeModelAndStreamControllerForModel.values.iterator;
    while(iteratorMapTypeModelAndStreamControllerForBaseModel.moveNext()) {
      Iterator<StreamController<BaseModel>> iteratorStreamControllerForBaseModel  = iteratorMapTypeModelAndStreamControllerForBaseModel.current.values.iterator;
      while(iteratorStreamControllerForBaseModel.moveNext()) {
        StreamController<BaseModel> streamControllerForBaseModel = iteratorStreamControllerForBaseModel.current;
        if(streamControllerForBaseModel == null) {
          continue;
        }
        if(streamControllerForBaseModel.isClosed) {
          continue;
        }
        streamControllerForBaseModel.close();
      }
    }
  }

  Stream<BaseModel> getStreamModelForWidget(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Type typeModel)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndStreamControllerForModel.containsKey(typeView)) {
      return throw LocalException(thisClass,constDeveloper,"$typeView not found");
    }
    return _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndStreamControllerForModel[typeView][typeWidget][typeModel].stream;
  }

  void setModelForWidget(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Type typeModel,
      BaseModel model)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndModel.containsKey(typeView)) {
      throw LocalException(thisClass,constDeveloper,"$typeView not found");
    }
    _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndModel[typeView][typeWidget][typeModel] = model;
  }

  void notifyStreamModelForWidgetIfHasListener(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Type typeModel)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndStreamControllerForModel.containsKey(typeView)) {
      throw LocalException(thisClass,constDeveloper,"$typeView not found");
    }
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndStreamControllerForModel[typeView][typeWidget][typeModel].hasListener) {
      throw CancelOperationWithoutExceptionAndSuccess(thisClass,"$typeView & $typeWidget & $typeModel stream has no listener");
    }
    if(_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndStreamControllerForModel[typeView][typeWidget][typeModel].isClosed) {
      throw LocalException(thisClass,constDeveloper,"$typeView & $typeWidget & $typeModel stream closed");
    }
    _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndStreamControllerForModel[typeView][typeWidget][typeModel]
        .sink
        .add(_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndModel[typeView][typeWidget][typeModel]);
  }

  Stream<BaseModel> getStreamModelForView(
      Object thisClass,
      Type typeView,
      Type typeModel)
  {
    if(!_mapTypeViewAndMapTypeModelAndStreamControllerForModel.containsKey(typeView)) {
      return throw LocalException(thisClass,constDeveloper,"$typeView not found");
    }
    return _mapTypeViewAndMapTypeModelAndStreamControllerForModel[typeView][typeModel].stream;
  }

  void setModelForView(
      Object thisClass,
      Type typeView,
      Type typeModel,
      BaseModel model)
  {
    if(!_mapTypeViewAndMapTypeModelAndModel.containsKey(typeView)) {
      throw LocalException(thisClass,constDeveloper,"$typeView not found");
    }
    _mapTypeViewAndMapTypeModelAndModel[typeView][typeModel] = model;
  }

  void notifyStreamModelForViewIfHasListener(
      Object thisClass,
      Type typeView,
      Type typeModel)
  {
    if(!_mapTypeViewAndMapTypeModelAndStreamControllerForModel.containsKey(typeView)) {
      throw LocalException(thisClass,constDeveloper,"$typeView not found");
    }
    if(!_mapTypeViewAndMapTypeModelAndStreamControllerForModel[typeView][typeModel].hasListener) {
      throw CancelOperationWithoutExceptionAndSuccess(thisClass,"$typeView & $typeModel stream has no listener");
    }
    if(_mapTypeViewAndMapTypeModelAndStreamControllerForModel[typeView][typeModel].isClosed) {
      throw LocalException(thisClass,constDeveloper,"$typeView & $typeModel stream closed");
    }
    _mapTypeViewAndMapTypeModelAndStreamControllerForModel[typeView][typeModel]
        .sink
        .add(_mapTypeViewAndMapTypeModelAndModel[typeView][typeModel]);
  }
}