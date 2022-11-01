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

import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/i_streams.dart';

class SCModel<T extends BaseModel> {
  final IStreams<T> iStreams;
  T model;
  final BaseListModel<T> listModel;

  SCModel(
      this.iStreams,
      this.model,
      this.listModel);

  @nonVirtual
  set setParameterModel(
      T model)
  {
    this.model = model;
  }

  @nonVirtual
  void notifyStreamModel() {
    iStreams.notifyStreamModel(model);
  }

  @nonVirtual
  void notifyStreamListModel() {
    iStreams.notifyStreamListModel(listModel.listModel);
  }
}