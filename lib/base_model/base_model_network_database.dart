import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseModelNetworkDatabase {
  String networkUniqueId = "";

  BaseModelDomain toModelDomain();

  set setNetworkUniqueId(String uniqueId)  {
    networkUniqueId = uniqueId;
  }
}