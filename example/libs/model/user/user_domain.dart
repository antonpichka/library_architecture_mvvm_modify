import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

class UserDomain extends BaseModelDomain {
  String name;

  UserDomain({String uniqueId,this.name}) : super(uniqueId);

  /// Start Getters Methods **/


  /// End Getters Methods **/

  /// Start Setters Methods **/

  set setParameterName(String name) {
    this.name = name;
  }

  /// End Setters Methods **/

  /// Start CBFVM and bool Methods **/

  ResponseGenericBoolAndDomainException deleteUserToSqfliteDatabaseUsingDeleteForAllDeleteDataCIDBUACBFVM() {
    if(isEmptyParameterName()) {
      return ResponseGenericBoolAndDomainException.exception(DomainException(constIsEmptyParameterName));
    }
    name += "deleteGo";
    return ResponseGenericBoolAndDomainException.success(true);
  }

  bool isEmptyParameterName() {
    return name.isEmpty;
  }

  /// End CBFVM and bool Methods **/

  /// Start Ext Methods **/

  @override
  String toString() {
    return super.toString();
  }

  /// End Ext Methods **/


  /// Start Const For CBFVM and Bool Methods **/

  static const String constIsEmptyParameterName = "constIsEmptyParameterName";

  /// End Const For CBFVM and Bool Methods **/

  /// Start Default state object for ViewModel object  **/

  static UserDomain get getDefaultUserDomain => UserDomain(
      uniqueId: "",
      name: ""
  );

  /// End Default state object for ViewModel object  **/
}