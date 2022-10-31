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
import 'package:library_architecture_mvvm_modify/utility/i_streams.dart';
import 'package:library_architecture_mvvm_modify/utility/sc_model.dart';

/*
  initialize only in view classes
 */
class SharedStreamController {
  static final SharedStreamController ssc = SharedStreamController._();

  Map<Type,Map<Type,Map<Enum,SCModel>>> _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel = {};
  Map<Type,Map<Enum,SCModel>> _mapTypeViewAndMapTypeModelAndSCModel = {};
  bool _isDispose = false;

  SharedStreamController._();
  /*
     call to main.dart or to main_view.dart to method initState();
   */
  void setMapForWidgetAndView(
      {Map<Type,Map<Type,Map<Enum,SCModel>>> mapModelForWidget,
      Map<Type,Map<Enum,SCModel>> mapModelForView})
  {
    _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel = mapModelForWidget ?? {};
    _mapTypeViewAndMapTypeModelAndSCModel = mapModelForView ?? {};
  }

  /*
     call to main_view.dart to method dispose();
   */
  bool dispose() {
    _disposeForWidget();
    _disposeForView();
    return _isDispose;
  }

  IStreams getIStreamsForWidget(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel].iStreams;
  }

  IStreams getIStreamsForView(
      Object thisClass,
      Type typeView,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapTypeModelAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapTypeModelAndSCModel[typeView][enumModel].iStreams;
  }

  Stream<BaseModel> getStreamModelForWidget(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel].iStreams.getStreamModel;
  }

  Stream<List<BaseModel>> getStreamListModelForWidget(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel].iStreams.getStreamListModel;
  }

  Stream<BaseModel> getStreamModelForView(
      Object thisClass,
      Type typeView,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapTypeModelAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapTypeModelAndSCModel[typeView][enumModel].iStreams.getStreamModel;
  }

  Stream<List<BaseModel>> getStreamListModelForView(
      Object thisClass,
      Type typeView,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapTypeModelAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapTypeModelAndSCModel[typeView][enumModel].iStreams.getStreamListModel;
  }

  void setModelForWidget(
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

  void setListModelForWidget(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModel,
      List<BaseModel> model)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel]
        .listModel
        .setParameterListModel = model;
  }

  void setModelsForListOfWidget(
      Object thisClass,
      Type typeView,
      Map<Type,Map<Enum,BaseModel>> mapTypeWidgetAndMapEnumModelAndModel)
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

  void setListsModelsForListOfWidget(
      Object thisClass,
      Type typeView,
      Map<Type,Map<Enum,List<BaseModel>>> mapTypeWidgetAndMapEnumModelAndListsModels)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    mapTypeWidgetAndMapEnumModelAndListsModels.forEach((Type typeWidget, Map<Enum,List<BaseModel>> mapEnumModelAndListsModels) {
      mapEnumModelAndListsModels.forEach((Enum enumModel, List<BaseModel> model) {
        _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel]
            .listModel
            .setParameterListModel = model;
      });
    });
  }

  void setModelForView(
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

  void setListModelForView(
      Object thisClass,
      Type typeView,
      Enum enumModel,
      List<BaseModel> model)
  {
    if(!_mapTypeViewAndMapTypeModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    _mapTypeViewAndMapTypeModelAndSCModel[typeView][enumModel]
        .listModel
        .setParameterListModel = model;
  }

  void notifyStreamModelForWidgetIfHasListener(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel].iStreams.hasListenerForModel) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream has no listener");
    }
    if(_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel].iStreams.isClosedForModel) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream closed");
    }
    _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel]
        .notifyStreamModel();
  }

  void notifyStreamListModelForWidgetIfHasListener(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel].iStreams.hasListenerForModel) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream has no listener");
    }
    if(_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel].iStreams.isClosedForModel) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream closed");
    }
    _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel]
        .notifyStreamListModel();
  }

  void notifyStreamModelsForListOfWidgetIfHasListener(
      Object thisClass,
      Type typeView,
      Map<Type,List<Enum>> mapTypeWidgetAndListOfEnumModel)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    mapTypeWidgetAndListOfEnumModel.forEach((Type typeWidget, List<Enum> listOfEnumModel) {
      for(Enum enumModel in listOfEnumModel) {
        if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel].iStreams.hasListenerForModel) {
          throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream has no listener");
        }
        if(_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel].iStreams.isClosedForModel) {
          throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream closed");
        }
        _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel]
            .notifyStreamModel();
      }
    });
  }

  void notifyStreamListsModelsForListOfWidgetIfHasListener(
      Object thisClass,
      Type typeView,
      Map<Type,List<Enum>> mapTypeWidgetAndListOfEnumModel)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    mapTypeWidgetAndListOfEnumModel.forEach((Type typeWidget, List<Enum> listOfEnumModel) {
      for(Enum enumModel in listOfEnumModel) {
        if(!_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel].iStreams.hasListenerForModel) {
          throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream has no listener");
        }
        if(_mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel].iStreams.isClosedForModel) {
          throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream closed");
        }
        _mapTypeViewAndMapTypeWidgetAndMapTypeModelAndSCModel[typeView][typeWidget][enumModel]
            .notifyStreamListModel();
      }
    });
  }

  void notifyStreamModelForViewIfHasListener(
      Object thisClass,
      Type typeView,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapTypeModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    if(!_mapTypeViewAndMapTypeModelAndSCModel[typeView][enumModel].iStreams.hasListenerForModel) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $enumModel stream has no listener");
    }
    if(_mapTypeViewAndMapTypeModelAndSCModel[typeView][enumModel].iStreams.isClosedForModel) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $enumModel stream closed");
    }
    _mapTypeViewAndMapTypeModelAndSCModel[typeView][enumModel]
        .notifyStreamModel();
  }

  void notifyStreamListModelForViewIfHasListener(
      Object thisClass,
      Type typeView,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapTypeModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    if(!_mapTypeViewAndMapTypeModelAndSCModel[typeView][enumModel].iStreams.hasListenerForModel) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $enumModel stream has no listener");
    }
    if(_mapTypeViewAndMapTypeModelAndSCModel[typeView][enumModel].iStreams.isClosedForModel) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $enumModel stream closed");
    }
    _mapTypeViewAndMapTypeModelAndSCModel[typeView][enumModel]
        .notifyStreamListModel();
  }

  void _disposeForWidget() {
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
          SCModel scModel = iteratorStreamControllerForBaseModel.current;
          scModel
              .iStreams
              .dispose();
        }
      }
    }
    _isDispose = true;
  }

  void _disposeForView() {
    if(_mapTypeViewAndMapTypeModelAndSCModel == null) {
      _isDispose = false;
      return;
    }
    Iterator<Map<Enum,SCModel>> iteratorMapTypeModelAndStreamControllerForBaseModel = _mapTypeViewAndMapTypeModelAndSCModel.values.iterator;
    while(iteratorMapTypeModelAndStreamControllerForBaseModel.moveNext()) {
      Iterator<SCModel> iteratorStreamControllerForBaseModel  = iteratorMapTypeModelAndStreamControllerForBaseModel.current.values.iterator;
      while(iteratorStreamControllerForBaseModel.moveNext()) {
        SCModel scModel = iteratorStreamControllerForBaseModel.current;
        scModel
            .iStreams
            .dispose();
      }
    }
    _isDispose = true;
  }
}