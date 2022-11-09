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
import 'package:library_architecture_mvvm_modify/base_model_named_database/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/utility/i_streams.dart';

class DefaultStreamController<T extends BaseModelNamedDatabase>
    implements IStreams<T>
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
  StreamController<T> get getTheObjectControllingTheStreamForModelNamedDatabase => _streamControllerForModel;

  @override
  StreamController<List<T>> get getTheObjectControllingTheStreamForListModelNamedDatabase => _streamControllerForListModel;

  @override
  Stream<T> get getStreamModelNamedDatabase => _streamControllerForModel.stream;

  @override
  Stream<List<T>> get getStreamListModelNamedDatabase => _streamControllerForListModel.stream;

  @override
  bool get hasListenerForModelNamedDatabase => _streamControllerForModel.hasListener;

  @override
  bool get hasListenerForListModelNamedDatabase => _streamControllerForListModel.hasListener;

  @override
  bool get isClosedForModelNamedDatabase => _streamControllerForModel.isClosed;

  @override
  bool get isClosedForListModelNamedDatabase => _streamControllerForListModel.isClosed;

  @override
  void notifyStreamModelNamedDatabase(
      T modelNamedDatabase)
  {
    _streamControllerForModel
        .sink
        .add(modelNamedDatabase);
  }

  @override
  void notifyStreamListModelNamedDatabase(
      List<T> listModelNamedDatabase)
  {
    _streamControllerForListModel
        .sink
        .add(listModelNamedDatabase);
  }
}