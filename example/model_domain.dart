import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_network_database.dart';

class ModelDomain extends BaseModelDomain {
  String name;

  ModelDomain({String uniqueId,this.name}) : super(uniqueId) {
    // Yes Assistant
//  this.baseModelAssistantByViewModelForDomain = /* My Realized */
  }

  /// Start Getters Methods **/


  /// End Getters Methods **/

  /// Start Setters Methods **/


  /// End Setters Methods **/

  /// Start CBFVM and bool methods **/


  /// End CBFVM and bool methods **/

  /// Start Other methods **/

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
  BaseModelDomain cloneObjectForCBFVM() {
    return ModelDomain(uniqueId: uniqueId,name: name);
  }

  /// End Other methods **/

  /// Start Const For CBFVM and bool methods **/


  /// End Const For CBFVM and bool methods **/
}