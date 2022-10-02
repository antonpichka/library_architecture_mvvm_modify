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
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

abstract class BaseIterator<T extends BaseModel>
    implements Iterator<T>
{
  List<T> _listModel;

  @nonVirtual
  List<T> get getSortedListModel {
    List<T> listModel = List.empty(growable: true);
    while(moveNext()) {
      T itemModel = current;
      listModel.add(itemModel);
    }
    return listModel;
  }

  @protected
  @nonVirtual
  List<T> get getListModel => _listModel;

  @nonVirtual
  set setParameterListModel(
      List<T> listModel)
  {
    _listModel = listModel;
  }
}