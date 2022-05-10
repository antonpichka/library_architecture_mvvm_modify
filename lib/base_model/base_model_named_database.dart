import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseModelNamedDatabase {
  String uniqueId;

  BaseModelNamedDatabase(this.uniqueId);

  BaseModelDomain toBaseModelDomain();
  Map<String, dynamic> toMap();
}