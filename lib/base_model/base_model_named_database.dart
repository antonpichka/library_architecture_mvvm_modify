import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseModelNamedDatabase<T extends BaseModelDomain> {
  String uniqueId;

  BaseModelNamedDatabase(this.uniqueId);

  T toBaseModelDomain();
  Map<String, dynamic> toMap();
}