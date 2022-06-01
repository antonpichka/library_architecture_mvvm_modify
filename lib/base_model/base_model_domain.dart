
import 'package:library_architecture_mvvm_modify/base_model/my_object.dart';

abstract class BaseModelDomain extends MyObject {
  String uniqueId;

  BaseModelDomain(this.uniqueId);
}