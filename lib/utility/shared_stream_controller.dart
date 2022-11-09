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
import 'package:library_architecture_mvvm_modify/base_model_named_database/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/utility/i_streams.dart';
import 'package:library_architecture_mvvm_modify/utility/sc_model.dart';

/*
  initialize only in view classes
 */
class SharedStreamController {
  static final SharedStreamController ssc = SharedStreamController._();

  Map<Type,Map<Type,Map<Enum,SCModel>>> _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel = {};
  Map<Type,Map<Enum,SCModel>> _mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel = {};
  bool _isDispose = false;
  int _delayInSeconds = 10;

  SharedStreamController._();
  /*
     call to main.dart or to main_view.dart to method initState();
   */
  void setParameterMapForWidgetAndView(
      {Map<Type,Map<Type,Map<Enum,SCModel>>> mapModelForWidget,
      Map<Type,Map<Enum,SCModel>> mapModelForView})
  {
    _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel = mapModelForWidget ?? {};
    _mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel = mapModelForView ?? {};
  }

  set setParameterDelayInSeconds(
      int delayInSeconds)
  {
    _delayInSeconds = delayInSeconds;
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
      Enum enumModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase].iStreams;
  }

  IStreams getIStreamsForView(
      Object thisClass,
      Type typeView,
      Enum enumModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel[typeView][enumModelNamedDatabase].iStreams;
  }

  Stream<BaseModelNamedDatabase> getStreamModelNamedDatabaseForWidget(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase].iStreams.getStreamModelNamedDatabase;
  }

  Stream<List<BaseModelNamedDatabase>> getStreamListModelNamedDatabaseForWidget(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase].iStreams.getStreamListModelNamedDatabase;
  }

  Stream<BaseModelNamedDatabase> getStreamModelNamedDatabaseForView(
      Object thisClass,
      Type typeView,
      Enum enumModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel[typeView][enumModelNamedDatabase].iStreams.getStreamModelNamedDatabase;
  }

  Stream<List<BaseModelNamedDatabase>> getStreamListModelNamedDatabaseForView(
      Object thisClass,
      Type typeView,
      Enum enumModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    return _mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel[typeView][enumModelNamedDatabase].iStreams.getStreamListModelNamedDatabase;
  }

  void setModelNamedDatabaseForWidget(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModelNamedDatabase,
      BaseModelNamedDatabase modelNamedDatabase)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase]
        .setParameterModelNamedDatabase = modelNamedDatabase;
  }

  void setListModelNamedDatabaseForWidget(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModelNamedDatabase,
      List<BaseModelNamedDatabase> listModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase]
        .listModelNamedDatabase
        .setParameterListModelNamedDatabase = listModelNamedDatabase;
  }

  void setModelNamedDatabaseForListWidget(
      Object thisClass,
      Type typeView,
      Map<Type,Map<Enum,BaseModelNamedDatabase>> mapTypeWidgetAndMapEnumModelNamedDatabaseAndModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    mapTypeWidgetAndMapEnumModelNamedDatabaseAndModelNamedDatabase.forEach((Type typeWidget, Map<Enum,BaseModelNamedDatabase> mapEnumModelNamedDatabaseAndModelNamedDatabase) {
      mapEnumModelNamedDatabaseAndModelNamedDatabase.forEach((Enum enumModelNamedDatabase, BaseModelNamedDatabase modelNamedDatabase) {
        _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase]
            .setParameterModelNamedDatabase = modelNamedDatabase;
      });
    });
  }

  void setListModelNamedDatabaseForListWidget(
      Object thisClass,
      Type typeView,
      Map<Type,Map<Enum,List<BaseModelNamedDatabase>>> mapTypeWidgetAndMapEnumModelNamedDatabaseAndListModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    mapTypeWidgetAndMapEnumModelNamedDatabaseAndListModelNamedDatabase.forEach((Type typeWidget, Map<Enum,List<BaseModelNamedDatabase>> mapEnumModelNamedDatabaseAndListModelNamedDatabase) {
      mapEnumModelNamedDatabaseAndListModelNamedDatabase.forEach((Enum enumModelNamedDatabase, List<BaseModelNamedDatabase> listModelNamedDatabase) {
        _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase]
            .listModelNamedDatabase
            .setParameterListModelNamedDatabase = listModelNamedDatabase;
      });
    });
  }

  void setModelNamedDatabaseForView(
      Object thisClass,
      Type typeView,
      Enum enumModelNamedDatabase,
      BaseModelNamedDatabase modelNamedDatabase)
  {
    if(!_mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    _mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel[typeView][enumModelNamedDatabase]
        .setParameterModelNamedDatabase = modelNamedDatabase;
  }

  void setListModelNamedDatabaseForView(
      Object thisClass,
      Type typeView,
      Enum enumModelNamedDatabase,
      List<BaseModelNamedDatabase> modelNamedDatabase)
  {
    if(!_mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    _mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel[typeView][enumModelNamedDatabase]
        .listModelNamedDatabase
        .setParameterListModelNamedDatabase = modelNamedDatabase;
  }

  void notifyStreamModelNamedDatabaseForWidgetIfHasListener(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase].iStreams.hasListenerForModelNamedDatabase) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModelNamedDatabase stream has no listener");
    }
    if(_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase].iStreams.isClosedForModelNamedDatabase) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModelNamedDatabase stream closed");
    }
    _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase]
        .notifyStreamModelNamedDatabase();
  }

  Future<void> notifyStreamModelNamedDatabaseForWidgetIfHasListenerUsingDelayInSeconds(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModelNamedDatabase)
  async {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    if(_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase].iStreams.isClosedForModelNamedDatabase) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModelNamedDatabase stream closed");
    }
    int iteration = 0;
    while(iteration < _delayInSeconds) {
      if(_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase]
          .iStreams
          .hasListenerForModelNamedDatabase)
      {
        _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase]
            .notifyStreamModelNamedDatabase();
        return;
      }
      await Future.delayed(const Duration(seconds: 1));
      iteration++;
      if(iteration >= _delayInSeconds) {
        return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModelNamedDatabase stream has no listener");
      }
    }
    return;
  }

  void notifyStreamListModelNamedDatabaseForWidgetIfHasListener(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase].iStreams.hasListenerForListModelNamedDatabase) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModelNamedDatabase stream has no listener");
    }
    if(_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase].iStreams.isClosedForListModelNamedDatabase) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModelNamedDatabase stream closed");
    }
    _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase]
        .notifyStreamListModelNamedDatabase();
  }

  Future<void> notifyStreamListModelNamedDatabaseForWidgetIfHasListenerUsingDelayInSeconds(
      Object thisClass,
      Type typeView,
      Type typeWidget,
      Enum enumModelNamedDatabase)
  async {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    if(_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase].iStreams.isClosedForListModelNamedDatabase) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModelNamedDatabase stream closed");
    }
    int iteration = 0;
    while(iteration < _delayInSeconds) {
      if(_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase]
          .iStreams
          .hasListenerForListModelNamedDatabase)
      {
        _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase]
            .notifyStreamListModelNamedDatabase();
        return;
      }
      await Future.delayed(const Duration(seconds: 1));
      iteration++;
      if(iteration >= _delayInSeconds) {
        return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModelNamedDatabase stream has no listener");
      }
    }
    return;
  }

  void notifyStreamModelNamedDatabaseForListWidgetIfHasListener(
      Object thisClass,
      Type typeView,
      Map<Type,List<Enum>> mapTypeWidgetAndListEnumModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    mapTypeWidgetAndListEnumModelNamedDatabase.forEach((Type typeWidget, List<Enum> listEnumModelNamedDatabase) {
      for(Enum enumModelNamedDatabase in listEnumModelNamedDatabase) {
        if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase].iStreams.hasListenerForModelNamedDatabase) {
          return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModelNamedDatabase stream has no listener");
        }
        if(_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase].iStreams.isClosedForModelNamedDatabase) {
          return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModelNamedDatabase stream closed");
        }
        _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase]
            .notifyStreamModelNamedDatabase();
      }
    });
  }

  void notifyStreamModelNamedDatabaseForListWidgetIfHasListenerUsingDelayInSeconds(
      Object thisClass,
      Type typeView,
      Map<Type,List<Enum>> mapTypeWidgetAndListEnumModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    mapTypeWidgetAndListEnumModelNamedDatabase.forEach((Type typeWidget, List<Enum> listEnumModelNamedDatabase) async {
      for(Enum enumModelNamedDatabase in listEnumModelNamedDatabase) {
        if(_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase].iStreams.isClosedForModelNamedDatabase) {
          return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModelNamedDatabase stream closed");
        }
        int iteration = 0;
        while(iteration < _delayInSeconds) {
          if(_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase]
              .iStreams
              .hasListenerForModelNamedDatabase)
          {
            _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase]
                .notifyStreamModelNamedDatabase();
            break;
          }
          await Future.delayed(const Duration(seconds: 1));
          iteration++;
          if(iteration >= _delayInSeconds) {
            return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModelNamedDatabase stream has no listener");
          }
        }
      }
    });
  }

  void notifyStreamListModelNamedDatabaseForListWidgetIfHasListener(
      Object thisClass,
      Type typeView,
      Map<Type,List<Enum>> mapTypeWidgetAndListEnumModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    mapTypeWidgetAndListEnumModelNamedDatabase.forEach((Type typeWidget, List<Enum> listOfEnumModel) {
      for(Enum enumModel in listOfEnumModel) {
        if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModel].iStreams.hasListenerForListModelNamedDatabase) {
          return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream has no listener");
        }
        if(_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModel].iStreams.isClosedForListModelNamedDatabase) {
          return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModel stream closed");
        }
        _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModel]
            .notifyStreamListModelNamedDatabase();
      }
    });
  }

  void notifyStreamListModelNamedDatabaseForListWidgetIfHasListenerUsingDelayInSeconds(
      Object thisClass,
      Type typeView,
      Map<Type,List<Enum>> mapTypeWidgetAndListEnumModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    mapTypeWidgetAndListEnumModelNamedDatabase.forEach((Type typeWidget, List<Enum> listEnumModelNamedDatabase) async {
      for(Enum enumModelNamedDatabase in listEnumModelNamedDatabase) {
        if(_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase].iStreams.isClosedForListModelNamedDatabase) {
          return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModelNamedDatabase stream closed");
        }
        int iteration = 0;
        while(iteration < _delayInSeconds) {
          if(_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase]
              .iStreams
              .hasListenerForListModelNamedDatabase)
          {
            _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel[typeView][typeWidget][enumModelNamedDatabase]
                .notifyStreamListModelNamedDatabase();
            break;
          }
          await Future.delayed(const Duration(seconds: 1));
          iteration++;
          if(iteration >= _delayInSeconds) {
            return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $typeWidget & $enumModelNamedDatabase stream has no listener");
          }
        }
      }
    });
  }

  void notifyStreamModelNamedDatabaseForViewIfHasListener(
      Object thisClass,
      Type typeView,
      Enum enumModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    if(!_mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel[typeView][enumModelNamedDatabase].iStreams.hasListenerForModelNamedDatabase) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $enumModelNamedDatabase stream has no listener");
    }
    if(_mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel[typeView][enumModelNamedDatabase].iStreams.isClosedForModelNamedDatabase) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $enumModelNamedDatabase stream closed");
    }
    _mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel[typeView][enumModelNamedDatabase]
        .notifyStreamModelNamedDatabase();
  }

  Future<void> notifyStreamModelNamedDatabaseForViewIfHasListenerUsingDelayInSeconds(
      Object thisClass,
      Type typeView,
      Enum enumModelNamedDatabase)
  async {
    if(!_mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    if(_mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel[typeView][enumModelNamedDatabase].iStreams.isClosedForModelNamedDatabase) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $enumModelNamedDatabase stream closed");
    }
    int iteration = 0;
    while(iteration < _delayInSeconds) {
      if(_mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel[typeView][enumModelNamedDatabase]
          .iStreams
          .hasListenerForModelNamedDatabase)
      {
        _mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel[typeView][enumModelNamedDatabase]
            .notifyStreamModelNamedDatabase();
        return;
      }
      await Future.delayed(const Duration(seconds: 1));
      iteration++;
      if(iteration >= _delayInSeconds) {
        return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $enumModelNamedDatabase stream has no listener");
      }
    }
    return;
  }

  void notifyStreamListModelNamedDatabaseForViewIfHasListener(
      Object thisClass,
      Type typeView,
      Enum enumModelNamedDatabase)
  {
    if(!_mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    if(!_mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel[typeView][enumModelNamedDatabase].iStreams.hasListenerForListModelNamedDatabase) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $enumModelNamedDatabase stream has no listener");
    }
    if(_mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel[typeView][enumModelNamedDatabase].iStreams.isClosedForListModelNamedDatabase) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $enumModelNamedDatabase stream closed");
    }
    _mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel[typeView][enumModelNamedDatabase]
        .notifyStreamListModelNamedDatabase();
  }

  Future<void> notifyStreamListModelNamedDatabaseForViewIfHasListenerUsingDelayInSeconds(
      Object thisClass,
      Type typeView,
      Enum enumModelNamedDatabase)
  async {
    if(!_mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel.containsKey(typeView)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView not found");
    }
    if(_mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel[typeView][enumModelNamedDatabase].iStreams.isClosedForListModelNamedDatabase) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $enumModelNamedDatabase stream closed");
    }
    int iteration = 0;
    while(iteration < _delayInSeconds) {
      if(_mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel[typeView][enumModelNamedDatabase]
          .iStreams
          .hasListenerForListModelNamedDatabase)
      {
        _mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel[typeView][enumModelNamedDatabase]
            .notifyStreamListModelNamedDatabase();
        return;
      }
      await Future.delayed(const Duration(seconds: 1));
      iteration++;
      if(iteration >= _delayInSeconds) {
        return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$typeView & $enumModelNamedDatabase stream has no listener");
      }
    }
    return;
  }

  void _disposeForWidget() {
    if(_mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel == null) {
      _isDispose = false;
      return;
    }
    Iterator<Map<Type,Map<Enum,SCModel>>> iteratorMapTypeWidgetAndMapEnumModelAndSCModel = _mapTypeViewAndMapTypeWidgetAndMapEnumModelNamedDatabaseAndSCModel.values.iterator;
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
    if(_mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel == null) {
      _isDispose = false;
      return;
    }
    Iterator<Map<Enum,SCModel>> iteratorMapEnumModelAndSCModel = _mapTypeViewAndMapEnumModelNamedDatabaseAndSCModel.values.iterator;
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
