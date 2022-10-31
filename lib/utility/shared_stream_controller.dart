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

  Map<Type,Map<Type,Map<Enum,SCModel>>> _mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel = {};
  Map<Type,Map<Enum,SCModel>> _mapTypeViewAndMapEnumModelAndSCModel = {};
  bool _isDispose = false;

  SharedStreamController._();
  /*
     call to main.dart or to main_view.dart to method initState();
   */
  void setMapForWidgetAndView(
      {Map<Type,Map<Type,Map<Enum,SCModel>>> mapModelForWidget,
      Map<Type,Map<Enum,SCModel>> mapModelForView})
  {
    _mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel = mapModelForWidget ?? {};
    _mapTypeViewAndMapEnumModelAndSCModel = mapModelForView ?? {};
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
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel[typeView][typeWidget][enumModel].iStreams;
  }

  IStreams getIStreamsForView(
      Object thisClass,
      Type typeView,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapEnumModelAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapEnumModelAndSCModel[typeView][enumModel].iStreams;
  }

  Stream<BaseModel> getStreamModelForWidget(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel[typeView][typeWidget][enumModel].iStreams.getStreamModel;
  }

  Stream<List<BaseModel>> getStreamListModelForWidget(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel[typeView][typeWidget][enumModel].iStreams.getStreamListModel;
  }

  Stream<BaseModel> getStreamModelForView(
      Object thisClass,
      Type typeView,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapEnumModelAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapEnumModelAndSCModel[typeView][enumModel].iStreams.getStreamModel;
  }

  Stream<List<BaseModel>> getStreamListModelForView(
      Object thisClass,
      Type typeView,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapEnumModelAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapEnumModelAndSCModel[typeView][enumModel].iStreams.getStreamListModel;
  }

  void setModelForWidget(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModel,
      BaseModel model)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    _mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel[typeView][typeWidget][enumModel]
        .setParameterModel = model;
  }

  void setListModelForWidget(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModel,
      List<BaseModel> model)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    _mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel[typeView][typeWidget][enumModel]
        .listModel
        .setParameterListModel = model;
  }

  void setModelsForListOfWidget(
      Object thisClass,
      Type typeView,
      Map<Type,Map<Enum,BaseModel>> mapTypeWidgetAndMapEnumModelAndModel)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    mapTypeWidgetAndMapEnumModelAndModel.forEach((Type typeWidget, Map<Enum,BaseModel> mapEnumModelAndModel) {
      mapEnumModelAndModel.forEach((Enum enumModel, BaseModel model) {
        _mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel[typeView][typeWidget][enumModel]
            .setParameterModel = model;
      });
    });
  }

  void setListsModelsForListOfWidget(
      Object thisClass,
      Type typeView,
      Map<Type,Map<Enum,List<BaseModel>>> mapTypeWidgetAndMapEnumModelAndListsModels)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    mapTypeWidgetAndMapEnumModelAndListsModels.forEach((Type typeWidget, Map<Enum,List<BaseModel>> mapEnumModelAndListsModels) {
      mapEnumModelAndListsModels.forEach((Enum enumModel, List<BaseModel> model) {
        _mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel[typeView][typeWidget][enumModel]
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
    if(!_mapTypeViewAndMapEnumModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    _mapTypeViewAndMapEnumModelAndSCModel[typeView][enumModel]
        .setParameterModel = model;
  }

  void setListModelForView(
      Object thisClass,
      Type typeView,
      Enum enumModel,
      List<BaseModel> model)
  {
    if(!_mapTypeViewAndMapEnumModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    _mapTypeViewAndMapEnumModelAndSCModel[typeView][enumModel]
        .listModel
        .setParameterListModel = model;
  }

  void notifyStreamModelForWidgetIfHasListener(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel[typeView][typeWidget][enumModel].iStreams.hasListenerForModel) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream has no listener");
    }
    if(_mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel[typeView][typeWidget][enumModel].iStreams.isClosedForModel) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream closed");
    }
    _mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel[typeView][typeWidget][enumModel]
        .notifyStreamModel();
  }

  void notifyStreamListModelForWidgetIfHasListener(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel[typeView][typeWidget][enumModel].iStreams.hasListenerForModel) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream has no listener");
    }
    if(_mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel[typeView][typeWidget][enumModel].iStreams.isClosedForModel) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream closed");
    }
    _mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel[typeView][typeWidget][enumModel]
        .notifyStreamListModel();
  }

  void notifyStreamModelsForListOfWidgetIfHasListener(
      Object thisClass,
      Type typeView,
      Map<Type,List<Enum>> mapTypeWidgetAndListOfEnumModel)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    mapTypeWidgetAndListOfEnumModel.forEach((Type typeWidget, List<Enum> listOfEnumModel) {
      for(Enum enumModel in listOfEnumModel) {
        if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel[typeView][typeWidget][enumModel].iStreams.hasListenerForModel) {
          throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream has no listener");
        }
        if(_mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel[typeView][typeWidget][enumModel].iStreams.isClosedForModel) {
          throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream closed");
        }
        _mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel[typeView][typeWidget][enumModel]
            .notifyStreamModel();
      }
    });
  }

  void notifyStreamListsModelsForListOfWidgetIfHasListener(
      Object thisClass,
      Type typeView,
      Map<Type,List<Enum>> mapTypeWidgetAndListOfEnumModel)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    mapTypeWidgetAndListOfEnumModel.forEach((Type typeWidget, List<Enum> listOfEnumModel) {
      for(Enum enumModel in listOfEnumModel) {
        if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel[typeView][typeWidget][enumModel].iStreams.hasListenerForModel) {
          throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream has no listener");
        }
        if(_mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel[typeView][typeWidget][enumModel].iStreams.isClosedForModel) {
          throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream closed");
        }
        _mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel[typeView][typeWidget][enumModel]
            .notifyStreamListModel();
      }
    });
  }

  void notifyStreamModelForViewIfHasListener(
      Object thisClass,
      Type typeView,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapEnumModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    if(!_mapTypeViewAndMapEnumModelAndSCModel[typeView][enumModel].iStreams.hasListenerForModel) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $enumModel stream has no listener");
    }
    if(_mapTypeViewAndMapEnumModelAndSCModel[typeView][enumModel].iStreams.isClosedForModel) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $enumModel stream closed");
    }
    _mapTypeViewAndMapEnumModelAndSCModel[typeView][enumModel]
        .notifyStreamModel();
  }

  void notifyStreamListModelForViewIfHasListener(
      Object thisClass,
      Type typeView,
      Enum enumModel)
  {
    if(!_mapTypeViewAndMapEnumModelAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    if(!_mapTypeViewAndMapEnumModelAndSCModel[typeView][enumModel].iStreams.hasListenerForModel) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $enumModel stream has no listener");
    }
    if(_mapTypeViewAndMapEnumModelAndSCModel[typeView][enumModel].iStreams.isClosedForModel) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $enumModel stream closed");
    }
    _mapTypeViewAndMapEnumModelAndSCModel[typeView][enumModel]
        .notifyStreamListModel();
  }

  void _disposeForWidget() {
    if(_mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel == null) {
      _isDispose = false;
      return;
    }
    Iterator<Map<Type,Map<Enum,SCModel>>> iteratorMapTypeWidgetAndMapEnumModelAndSCModel = _mapTypeViewAndMapTypeWidgetAndMapEnumModelAndSCModel.values.iterator;
    while(iteratorMapTypeWidgetAndMapEnumModelAndSCModel.moveNext()) {
      Iterator<Map<Enum,SCModel>> iteratorMapEnumModelAndSCModel =  iteratorMapTypeWidgetAndMapEnumModelAndSCModel.current.values.iterator;
      while(iteratorMapEnumModelAndSCModel.moveNext()) {
        Iterator<SCModel> iteratorSCModel  = iteratorMapEnumModelAndSCModel.current.values.iterator;
        while(iteratorSCModel.moveNext()) {
          SCModel scModel = iteratorSCModel.current;
          scModel
              .iStreams
              .dispose();
        }
      }
    }
    _isDispose = true;
  }

  void _disposeForView() {
    if(_mapTypeViewAndMapEnumModelAndSCModel == null) {
      _isDispose = false;
      return;
    }
    Iterator<Map<Enum,SCModel>> iteratorMapEnumModelAndSCModel = _mapTypeViewAndMapEnumModelAndSCModel.values.iterator;
    while(iteratorMapEnumModelAndSCModel.moveNext()) {
      Iterator<SCModel> iteratorSCModel  = iteratorMapEnumModelAndSCModel.current.values.iterator;
      while(iteratorSCModel.moveNext()) {
        SCModel scModel = iteratorSCModel.current;
        scModel
            .iStreams
            .dispose();
      }
    }
    _isDispose = true;
  }
}