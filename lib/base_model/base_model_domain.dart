import 'package:library_architecture_mvvm_modify/base_model/base_model_assistant_by_viewmodel_for_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_network_database.dart';

abstract class BaseModelDomain {
  String uniqueId = "";
  BaseModelAssistantByViewModelForDomain baseModelAssistantForDomain;

  BaseModelLocalDatabase toBaseModelLocalDatabase();
  BaseModelNetworkDatabase toBaseModelNetworkDatabase();
}