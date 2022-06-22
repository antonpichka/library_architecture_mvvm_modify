import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

class UserDomain extends BaseModelDomain {
  String name;

  UserDomain(String uniqueId,this.name) : super(uniqueId);

  /// Start Getters Methods **/

  /// End Getters Methods **/

  /// Start Setters Methods **/

  set setParameterName(String name) {
    this.name = name;
  }

  /// End Setters Methods **/

  /// Start FBDS and bool Methods **/

  ResponseGenericBoolAndDomainException deleteUserToSqfliteDatabaseFBDSUsingDeleteForAll() {
    if(isEmptyByTrimParameterName()) {
      return ResponseGenericBoolAndDomainException.exception(DomainException(constIsEmptyByTrimParameterName));
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

  /// Start Const For CBFVM and Bool Methods **/

  static const String constIsEmptyByTrimParameterName = "constIsEmptyByTrimParameterName";

  /// End Const For CBFVM and Bool Methods **/

  /// Start Default state object for ViewModel object  **/

  static UserDomain get getDefaultUserDomain => UserDomain(
      "",
      ""
  );

  /// End Default state object for ViewModel object  **/
}