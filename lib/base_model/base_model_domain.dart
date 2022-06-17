import 'package:library_architecture_mvvm_modify/base_model/base_object.dart';

abstract class BaseModelDomain extends BaseObject {
  String uniqueId;

  BaseModelDomain(this.uniqueId);
}