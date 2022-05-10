import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseModelNamedDatabase {
  String uniqueId;

  BaseModelNamedDatabase(this.uniqueId);
  BaseModelNamedDatabase.fromMap(Map<String,dynamic> map);

  BaseModelDomain toBaseModelDomain();
  Map<String, dynamic> toMap();
}