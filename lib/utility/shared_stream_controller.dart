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
import 'package:library_architecture_mvvm_modify/utility/sc_model.dart';

/*
  initialize only in view classes
 */
class SharedStreamController {
  static Map<Type,Map<Type,Map<Enum,SCModel>>> _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel = {};

  static Map<Type,Map<Enum,SCModel>> _mapTypeViewAndMapTypeModelAndSCModel = {};

  static bool _isDispose = false;

  SharedStreamController._();
  /*
     call to main.dart or to main_view.dart to method initState();
   */
  static void setMapForWidgetAndView(
      {Map<Type,Map<Type,Map<Enum,SCModel>>> mapModelForWidget,
      Map<Type,Map<Enum,SCModel>> mapModelForView})
  {
    _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel = mapModelForWidget ?? {};
    _mapTypeViewAndMapTypeModelAndSCModel = mapModelForView ?? {};
  }

  /*
     call to main_view.dart to method dispose();
   */
  static bool dispose() {
    _disposeForWidget();
    _disposeForView();
    return _isDispose;
  }

  static void _disposeForWidget() {
    if(_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel == null) {
      _isDispose = false;
      return;
    }
    Iterator<Map<Type,Map<Enum,SCModel>>> iteratorMapTypeWidgetAndMapTypeModelAndStreamControllerForBaseModel = _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel.values.iterator;
    while(iteratorMapTypeWidgetAndMapTypeModelAndStreamControllerForBaseModel.moveNext()) {
      Iterator<Map<Enum,SCModel>> iteratorMapTypeModelAndStreamControllerForBaseModel =  iteratorMapTypeWidgetAndMapTypeModelAndStreamControllerForBaseModel.current.values.iterator;
      while(iteratorMapTypeModelAndStreamControllerForBaseModel.moveNext()) {
        Iterator<SCModel> iteratorStreamControllerForBaseModel  = iteratorMapTypeModelAndStreamControllerForBaseModel.current.values.iterator;
        while(iteratorStreamControllerForBaseModel.moveNext()) {
          StreamController<BaseModel> streamControllerForBaseModel = iteratorStreamControllerForBaseModel.current.streamController;
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
    _isDispose = true;
  }

  static void _disposeForView() {
    if(_mapTypeViewAndMapTypeModelAndSCModel == null) {
      _isDispose = false;
      return;
    }
    Iterator<Map<Enum,SCModel>> iteratorMapTypeModelAndStreamControllerForBaseModel = _mapTypeViewAndMapTypeModelAndSCModel.values.iterator;
    while(iteratorMapTypeModelAndStreamControllerForBaseModel.moveNext()) {
      Iterator<SCModel> iteratorStreamControllerForBaseModel  = iteratorMapTypeModelAndStreamControllerForBaseModel.current.values.iterator;
      while(iteratorStreamControllerForBaseModel.moveNext()) {
        StreamController<BaseModel> streamControllerForBaseModel = iteratorStreamControllerForBaseModel.current.streamController;
        if(streamControllerForBaseModel == null) {
          continue;
        }
        if(streamControllerForBaseModel.isClosed) {
          continue;
        }
        streamControllerForBaseModel.close();
      }
    }
    _isDispose = true;
  }

  static Stream<BaseModel> getStreamModelForWidget(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel].streamController.stream;
  }

  static Stream<BaseModel> getStreamModelForView(
      Object thisClass,
      Type typeView,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapTypeModelAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapTypeModelAndSCModel[typeView][enumModel].streamController.stream;
  }

  static void setModelForWidget(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModel,
      BaseModel model)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel]
        .setParameterModel = model;
  }

  static void setModelsForListOfWidget(
      Object thisClass,
      Type typeView,
      Map<Type,Map<Enum,BaseModel>> mapTypeWidgetAndMapEnumModelAndModel,)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    mapTypeWidgetAndMapEnumModelAndModel.forEach((Type typeWidget, Map<Enum,BaseModel> mapEnumModelAndModel) {
      mapEnumModelAndModel.forEach((Enum enumModel, BaseModel model) {
        _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel]
            .setParameterModel = model;
      });
    });
  }

  static void setModelForView(
      Object thisClass,
      Type typeView,
      Enum enumModel,
      BaseModel model)
  {
    if(!_mapTypeViewAndMapTypeModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    _mapTypeViewAndMapTypeModelAndSCModel[typeView][enumModel]
        .setParameterModel = model;
  }

  static void notifyStreamModelForWidgetIfHasListener(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel].streamController.hasListener) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream has no listener");
    }
    if(_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel].streamController.isClosed) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream closed");
    }
    _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel]
        .notifyStreamModel();
  }

  static void notifyStreamModelsForListOfWidgetIfHasListener(
      Object thisClass,
      Type typeView,
      Map<Type,List<Enum>> mapTypeWidgetAndListOfEnumModel)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    mapTypeWidgetAndListOfEnumModel.forEach((Type typeWidget, List<Enum> listOfEnumModel) {
      for(Enum enumModel in listOfEnumModel) {
        if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel].streamController.hasListener) {
          throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream has no listener");
        }
        if(_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel].streamController.isClosed) {
          throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream closed");
        }
        _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel]
            .notifyStreamModel();
      }
    });
  }

  static void notifyStreamModelForViewIfHasListener(
      Object thisClass,
      Type typeView,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapTypeModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    if(!_mapTypeViewAndMapTypeModelAndSCModel[typeView][enumModel].streamController.hasListener) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $enumModel stream has no listener");
    }
    if(_mapTypeViewAndMapTypeModelAndSCModel[typeView][enumModel].streamController.isClosed) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $enumModel stream closed");
    }
    _mapTypeViewAndMapTypeModelAndSCModel[typeView][enumModel]
        .notifyStreamModel();
  }
}