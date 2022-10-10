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
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'constants.dart';

/*
  initialize only in view classes
 */
class SharedStreamController<T extends Enum,Y extends BaseModel> {
  static Map<Enum,BaseModel> _mapEnumAndBaseModel = {};
  static Map<Enum,StreamController<BaseModel>> _mapEnumAndStreamControllerForBaseModel = {};

  /*
     call to main.dart or to main_view.dart to method initState();
   */
  static void setMapEnumAndBaseModelAndSetMapEnumAndStreamControllerForBaseModel(
      Map<Enum,BaseModel> mapEnumAndBaseModel,
      Map<Enum,StreamController<BaseModel>> mapEnumAndStreamControllerForBaseModel)
  {
    _setMapEnumAndBaseModel(mapEnumAndBaseModel);
    _setMapEnumAndStreamControllerForBaseModel(mapEnumAndStreamControllerForBaseModel);
  }

  static void _setMapEnumAndBaseModel(
      Map<Enum,BaseModel> mapEnumAndBaseModel)
  {
    if(_mapEnumAndBaseModel.isNotEmpty) {
      throw LocalException(SharedStreamController,constDeveloper,"setMapEnumAndBaseModel method can only be called once");
    }
    _mapEnumAndBaseModel = mapEnumAndBaseModel;
  }

  static void _setMapEnumAndStreamControllerForBaseModel(
      Map<Enum,StreamController<BaseModel>> mapEnumAndStreamControllerForBaseModel)
  {
    if(_mapEnumAndStreamControllerForBaseModel.isNotEmpty) {
      throw LocalException(SharedStreamController,constDeveloper,"setMapEnumAndStreamControllerForBaseModel method can only be called once");
    }
    _mapEnumAndStreamControllerForBaseModel = mapEnumAndStreamControllerForBaseModel;
  }

  /*
     call to main_view.dart to method dispose();
   */
  static void disposeMapEnumAndStreamControllerForBaseModel() {
    if(_mapEnumAndStreamControllerForBaseModel == null) {
      return;
    }
    for(StreamController<BaseModel> streamControllerForBaseModel in _mapEnumAndStreamControllerForBaseModel.values) {
      if(streamControllerForBaseModel == null) {
        continue;
      }
      if(streamControllerForBaseModel.isClosed) {
        continue;
      }
      streamControllerForBaseModel.close();
    }
  }

  @protected
  Stream<Y> getStreamModel(
      Object thisClass,
      T enums)
  {
    if(!_mapEnumAndStreamControllerForBaseModel.containsKey(enums)) {
      return throw LocalException(thisClass,constDeveloper,"$enums not found");
    }
    return _mapEnumAndStreamControllerForBaseModel[enums].stream;
  }

  @protected
  void setModel(
      Object thisClass,
      T enums,
      Y model)
  {
    if(!_mapEnumAndBaseModel.containsKey(enums)) {
      throw LocalException(thisClass,constDeveloper,"$enums not found");
    }
    _mapEnumAndBaseModel[enums] = model;
  }

  @protected
  void notifyStreamModel(
      Object thisClass,
      T enums)
  {
    if(!_mapEnumAndStreamControllerForBaseModel.containsKey(enums)) {
      throw LocalException(thisClass,constDeveloper,"$enums not found");
    }
    _mapEnumAndStreamControllerForBaseModel[enums]
        .sink
        .add(_mapEnumAndBaseModel[enums]);
  }
}