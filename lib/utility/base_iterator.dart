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
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/base_model_named.dart';

abstract class BaseIterator<T extends BaseModelNamed>
    implements Iterator<T>
{
  List<T> listModelNamed;

  @nonVirtual
  List<T> get getSortedListModelNamed {
    List<T> listModelNamed = List.empty(growable: true);
    while(moveNext()) {
      T itemModelNamed = current;
      listModelNamed.add(itemModelNamed);
    }
    return listModelNamed;
  }

  @nonVirtual
  set setParameterListModelNamed(
      List<T> listModelNamed)
  {
    this.listModelNamed = listModelNamed;
  }
}