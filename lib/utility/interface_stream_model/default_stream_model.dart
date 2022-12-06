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
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class DefaultStreamModel<T extends BaseModel,Y extends BaseListModel<T>>
    implements IStreamModel<T,Y>
{
  final StreamController<T>? _streamControllerForModel;
  final StreamController<Y>? _streamControllerForListModel;
  final int? _delayInSeconds;
  T? _model;
  Y? _listModel;
  StreamSubscription<T>? _streamSubscriptionForModel;
  StreamSubscription<Y>? _streamSubscriptionForListModel;

  DefaultStreamModel(
      this._model,
      this._listModel,
      [this._delayInSeconds = 30]) :
        _streamControllerForModel =  StreamController<T>.broadcast(),
        _streamControllerForListModel = StreamController<Y>.broadcast();


  @override
  void dispose() {
    _streamSubscriptionForModel?.cancel();
    _streamSubscriptionForListModel?.cancel();
    if(!_streamControllerForModel!.isClosed) {
      _streamControllerForModel?.close();
    }
    if(!_streamControllerForListModel!.isClosed) {
      _streamControllerForListModel?.close();
    }
  }

  @override
  Stream<T>? get getStreamModel => _streamControllerForModel!.stream;

  @override
  Stream<Y>? get getStreamListModel => _streamControllerForListModel!.stream;

  @override
  T? get getModel => _model;

  @override
  Y? get getListModel => _listModel;

  @override
  set setModel(
      T? model)
  {
    _model = model;
  }

  @override
  set setListModel(
      Y? listModel)
  {
    _listModel = listModel;
  }

  @override
  void notifyStreamModel(
      Object thisClass)
  {
    if(!_streamControllerForModel!.hasListener) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"stream has no listener");
    }
    if(_streamControllerForModel!.isClosed) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"stream closed");
    }
    _streamControllerForModel
        ?.sink
        .add(_model!);
  }

  @override
  void notifyStreamListModel(
      Object thisClass)
  {
    if(!_streamControllerForListModel!.hasListener) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"stream has no listener");
    }
    if(_streamControllerForListModel!.isClosed) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"stream closed");
    }
    _streamControllerForListModel
        ?.sink
        .add(_listModel!);
  }

  @override
  Future<void> notifyStreamDelayInSecondsModel(
      Object thisClass)
  async {
    if(_streamControllerForModel!.isClosed) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"stream closed");
    }
    int iteration = 0;
    while(iteration < _delayInSeconds!) {
      if(_streamControllerForModel!.hasListener) {
        _streamControllerForModel
            ?.sink
            .add(_model!);
        break;
      }
      await Future.delayed(const Duration(seconds: 1));
      iteration++;
      if(iteration >= _delayInSeconds!) {
        throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"stream has no listener");
      }
    }
  }

  @override
  Future<void> notifyStreamDelayInSecondsListModel(
      Object thisClass)
  async {
    if(_streamControllerForListModel!.isClosed) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"stream closed");
    }
    int iteration = 0;
    while(iteration < _delayInSeconds!) {
      if(_streamControllerForListModel!.hasListener) {
        _streamControllerForListModel
            ?.sink
            .add(_listModel!);
        break;
      }
      await Future.delayed(const Duration(seconds: 1));
      if(iteration >= _delayInSeconds!) {
        throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"stream has no listener");
      }
      iteration++;
    }
  }

  void listensStreamModel(
      Function(T event) callback)
  {
    _streamSubscriptionForModel = _streamControllerForModel
        !.stream
        .listen((event) {
          callback(event);
        });
  }

  void listensStreamListModel(
      Function(Y event) callback)
  {
    _streamSubscriptionForListModel = _streamControllerForListModel
        !.stream
        .listen((event) {
          callback(event);
        });
  }

  void resumeStreamSubscriptionForModel() {
    if(!_streamSubscriptionForModel!.isPaused) {
      return;
    }
    _streamSubscriptionForModel?.resume();
  }

  void resumeStreamSubscriptionForListModel() {
    if(!_streamSubscriptionForListModel!.isPaused) {
      return;
    }
    _streamSubscriptionForListModel?.resume();
  }

  void pauseStreamSubscriptionForModel() {
    if(_streamSubscriptionForModel!.isPaused) {
      return;
    }
    _streamSubscriptionForModel?.pause();
  }

  void pauseStreamSubscriptionForListModel() {
    if(_streamSubscriptionForListModel!.isPaused) {
      return;
    }
    _streamSubscriptionForListModel?.pause();
  }
}