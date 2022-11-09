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
import 'package:library_architecture_mvvm_modify/base_model_named_database/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/utility/i_streams.dart';

class SCModel<T extends BaseModelNamedDatabase> {
  final IStreams<T> iStreams;
  T modelNamedDatabase;
  final BaseListModelNamedDatabase<T> listModelNamedDatabase;

  SCModel(
      this.iStreams,
      this.modelNamedDatabase,
      this.listModelNamedDatabase);

  @nonVirtual
  set setParameterModelNamedDatabase(
      T modelNamedDatabase)
  {
    this.modelNamedDatabase = modelNamedDatabase;
  }

  @nonVirtual
  void notifyStreamModelNamedDatabase() {
    iStreams.notifyStreamModelNamedDatabase(modelNamedDatabase);
  }

  @nonVirtual
  void notifyStreamListModelNamedDatabase() {
    iStreams.notifyStreamListModelNamedDatabase(listModelNamedDatabase.listModelNamedDatabase);
  }
}