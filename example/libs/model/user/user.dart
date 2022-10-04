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

import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/response/response_generic_bool_and_domain_exception.dart';

class User
    extends BaseModel
{
  String name;

  User(String uniqueId,this.name) : super(uniqueId);

  /// Start Getters Methods **/

  /// End Getters Methods **/

  /// Start Setters Methods **/
  set setParameterName(String name) {
    this.name = name;
  }
  /// End Setters Methods **/

  /// Start FBDS and bool Methods **/
  ResponseGenericBoolAndDomainException deleteUserToSqfliteDatabaseFBDSUsingDeleteTIP() {
    if(isEmptyByTrimParameterName()) {
      return ResponseGenericBoolAndDomainException.exception(DomainException(this,constIsEmptyByTrimParameterName));
    }
    name += "deleteGo";
    return ResponseGenericBoolAndDomainException.success(true);
  }

  bool isEmptyByTrimParameterName() {
    return name.trim().isEmpty;
  }
  /// End FBDS and bool Methods **/

  /// Start Ext Methods **/
  @override
  String toString() {
    return "$uniqueId : $name";
  }
  /// End Ext Methods **/

  /// Start Const For FBDS and Bool Methods **/
  static const String constIsEmptyByTrimParameterName = "constIsEmptyByTrimParameterName";
  /// End Const For FBDS and Bool Methods **/

  /// Start Default state object for ViewModel object  **/
  static User get getDefaultUser => User("", "");
  /// End Default state object for ViewModel object  **/
}