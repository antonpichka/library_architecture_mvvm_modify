import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/my_object.dart';

abstract class BaseModelNamedDatabase<T extends BaseModelDomain> extends MyObject {
  String uniqueId;

  BaseModelNamedDatabase(this.uniqueId);

  T toBaseModelDomain();
  Map<String, dynamic> toMap();
}