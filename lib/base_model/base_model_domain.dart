import 'package:library_architecture_mvvm_modify/ability_to_clone.dart';

abstract class BaseModelDomain implements AbilityToClone<BaseModelDomain>{
  String uniqueId;
  BaseModelDomain(this.uniqueId);
}