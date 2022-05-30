import 'package:library_architecture_mvvm_modify/ability_to_clone.dart';

abstract class BaseModelDomain<T> implements AbilityToClone<T>{
  String uniqueId;

  BaseModelDomain(this.uniqueId);
}