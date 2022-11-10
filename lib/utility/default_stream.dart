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
import 'package:library_architecture_mvvm_modify/base_model_named_database/base_list_model_named.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/base_model_named.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream.dart';

class DefaultStream<T extends BaseModelNamed>
    implements IStream<T>
{
  final StreamController<T> _streamControllerForModelNamed;
  final StreamController<List<T>> _streamControllerForListModelNamed;
  final BaseListModelNamed<T> _listModelNamed;
  final int _delayInSeconds;
  T _modelNamed;

  DefaultStream(
      this._modelNamed,
      this._listModelNamed,
      [this._delayInSeconds = 30]) :
        _streamControllerForModelNamed =  StreamController.broadcast(),
        _streamControllerForListModelNamed = StreamController.broadcast();


  @override
  void dispose() {
    if(!_streamControllerForModelNamed.isClosed) {
      _streamControllerForModelNamed.close();
    }
    if(!_streamControllerForListModelNamed.isClosed) {
      _streamControllerForListModelNamed.close();
    }
  }

  @override
  Stream<T> get getStreamModelNamed => _streamControllerForModelNamed.stream;

  @override
  Stream<List<T>> get getStreamListModelNamed => _streamControllerForListModelNamed.stream;

  @override
  T get getModelNamed => _modelNamed;

  @override
  BaseListModelNamed<T> get getListModelNamed => _listModelNamed;

  @override
  set setModelNamed(
      T modelNamedDatabase)
  {
    _modelNamed = modelNamedDatabase;
  }

  @override
  set setListModelNamed(
      List<T> listModelNamedDatabase)
  {
    _listModelNamed
        .setParameterListModelNamed = listModelNamedDatabase;
  }

  @override
  void notifyStreamModelNamed(
      Object thisClass)
  {
    if(!_streamControllerForModelNamed.hasListener) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"stream has no listener");
    }
    if(_streamControllerForModelNamed.isClosed) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"stream closed");
    }
    _streamControllerForModelNamed
        .sink
        .add(_modelNamed);
  }

  @override
  void notifyStreamListModelNamed(
      Object thisClass)
  {
    if(!_streamControllerForListModelNamed.hasListener) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"stream has no listener");
    }
    if(_streamControllerForListModelNamed.isClosed) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"stream closed");
    }
    _streamControllerForListModelNamed
        .sink
        .add(_listModelNamed.listModelNamed);
  }

  @override
  Future<void> notifyStreamModelNamedUsingDelayInSeconds(
      Object thisClass)
  async {
    if(_streamControllerForModelNamed.isClosed) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"stream closed");
    }
    int iteration = 0;
    while(iteration < _delayInSeconds) {
      if(_streamControllerForModelNamed.hasListener) {
        _streamControllerForModelNamed
            .sink
            .add(_modelNamed);
        break;
      }
      await Future.delayed(const Duration(seconds: 1));
      iteration++;
      if(iteration >= _delayInSeconds) {
        throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"stream has no listener");
      }
    }
  }

  @override
  Future<void> notifyStreamListModelNamedUsingDelayInSeconds(
      Object thisClass)
  async {
    if(_streamControllerForListModelNamed.isClosed) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"stream closed");
    }
    int iteration = 0;
    while(iteration < _delayInSeconds) {
      if(_streamControllerForListModelNamed.hasListener) {
        _streamControllerForListModelNamed
            .sink
            .add(_listModelNamed.listModelNamed);
        break;
      }
      await Future.delayed(const Duration(seconds: 1));
      iteration++;
      if(iteration >= _delayInSeconds) {
        throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"stream has no listener");
      }
    }
  }
}