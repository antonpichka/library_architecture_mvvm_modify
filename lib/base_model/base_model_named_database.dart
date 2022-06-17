import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_object.dart';

abstract class BaseModelNamedDatabase<T extends BaseModelDomain> extends BaseObject {
  String uniqueId;

  BaseModelNamedDatabase(this.uniqueId);

  T toBaseModelDomain();
  Map<String, dynamic> toMap();
}