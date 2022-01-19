import 'package:library_architecture_mvvm_modify/base_model/base_model_assistant_by_view_model_for_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_network_database.dart';

abstract class BaseModelDomain {
  String uniqueId = "";
  BaseModelAssistantByViewModelForDomain baseModelAssistantByViewModelForDomain;

  BaseModelLocalDatabase toBaseModelLocalDatabase();
  BaseModelNetworkDatabase toBaseModelNetworkDatabase();
}