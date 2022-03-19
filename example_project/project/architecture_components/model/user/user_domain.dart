import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_network_database.dart';

class UserDomain extends BaseModelDomain {
  String name;

  UserDomain({String uniqueId,this.name}) : super(uniqueId) {
    // Yes Assistant
//  this.baseModelAssistantByViewModelForDomain = /* My Realized */
  }

  /// Start Getters Methods **/


  /// End Getters Methods **/

  /// Start Setters Methods **/


  /// End Setters Methods **/

  /// Start CBFVM and bool Methods **/


  /// End CBFVM and bool Methods **/

  /// Start Ext Methods **/

  // No TEST
  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }

  @override
  BaseModelLocalDatabase toBaseModelLocalDatabase() {
    // TODO: implement toBaseModelLocalDatabase
    throw UnimplementedError();
  }

  @override
  BaseModelNetworkDatabase toBaseModelNetworkDatabase() {
    // TODO: implement toBaseModelNetworkDatabase
    throw UnimplementedError();
  }

  @override
  UserDomain cloneObjectForCBFVM() {
    return UserDomain(uniqueId: uniqueId,name: name);
  }

  /// End Ext Methods **/

  /// Start Custom Methods  **/


  /// End Custom Methods  **/

  /// Start Const For CBFVM and Bool Methods **/


  /// End Const For CBFVM and Bool Methods **/


  /// Start Default state object for ViewModel object  **/

  static UserDomain get getDefaultUserDomain => UserDomain(
      uniqueId: "",
      name: ""
  );

  /// End Default state object for ViewModel object  **/
}