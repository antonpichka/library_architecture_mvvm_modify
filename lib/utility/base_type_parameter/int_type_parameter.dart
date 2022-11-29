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

import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

class IntTypeParameter
    extends BaseTypeParameter<int>
{
  IntTypeParameter.success(int? parameter) : super.success(parameter);
  IntTypeParameter.exception(super.exception) : super.exception();
  IntTypeParameter.successForFBDS() : super.successForFBDS();
  IntTypeParameter.exceptionForFBDS(super.exception) : super.exceptionForFBDS();
}
