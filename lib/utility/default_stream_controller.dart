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
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/i_streams.dart';

class DefaultStreamController<T extends BaseModel>
    implements IStreams<StreamController<T>,StreamController<List<T>>>
{
  final StreamController<T> _streamControllerForModel =
  StreamController.broadcast();
  final StreamController<List<T>> _streamControllerForListModel =
  StreamController.broadcast();

  @override
  void dispose() {
    if(!_streamControllerForModel.isClosed) {
      _streamControllerForModel.close();
    }
    if(!_streamControllerForListModel.isClosed) {
      _streamControllerForListModel.close();
    }
  }

  @override
  StreamController<T> get getTheObjectControllingTheStreamForModel => _streamControllerForModel;

  @override
  StreamController<List<T>> get getTheObjectControllingTheStreamForListModel => _streamControllerForListModel;

  @override
  Stream<T> get getStreamModel => _streamControllerForModel.stream;

  @override
  Stream<List<T>> get getStreamListModel => _streamControllerForListModel.stream;

  @override
  bool get hasListenerForModel => _streamControllerForModel.hasListener;

  @override
  bool get hasListenerForListModel => _streamControllerForListModel.hasListener;

  @override
  bool get isClosedForModel => _streamControllerForModel.isClosed;

  @override
  bool get isClosedForListModel => _streamControllerForListModel.isClosed;

  @override
  void notifyStreamModel(
      BaseModel model)
  {
    _streamControllerForModel
        .sink
        .add(model);
  }

  @override
  void notifyStreamListModel(
      List<BaseModel> listModel)
  {
    _streamControllerForListModel
        .sink
        .add(listModel);
  }
}