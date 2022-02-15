

import 'package:library_architecture_mvvm_modify/base_model/base_model_ln_database.dart';

abstract class BaseModelNetworkDatabase extends BaseModelLNDatabase {
  String networkUniqueId;

  BaseModelNetworkDatabase(this.networkUniqueId);
}