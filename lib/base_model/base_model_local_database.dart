import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseModelLocalDatabase {
  String localUniqueId = "";

  BaseModelDomain toModelDomain();
  Map<String, dynamic> toMap();

  set setLocalUniqueId(String uniqueId)  {
    localUniqueId = uniqueId;
  }
}