import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

class UserDomain extends BaseModelDomain {
  String name;

  UserDomain({String uniqueId,this.name}) : super(uniqueId);

  /// Start Getters Methods **/


  /// End Getters Methods **/

  /// Start Setters Methods **/


  /// End Setters Methods **/

  /// Start CBFVM and bool Methods **/


  /// End CBFVM and bool Methods **/

  /// Start Ext Methods **/

  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }

  /// End Ext Methods **/


  /// Start Const For CBFVM and Bool Methods **/


  /// End Const For CBFVM and Bool Methods **/

  /// Start Default state object for ViewModel object  **/

  static UserDomain get getDefaultUserDomain => UserDomain(
      uniqueId: "",
      name: ""
  );

  /// End Default state object for ViewModel object  **/
}