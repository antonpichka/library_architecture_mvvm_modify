import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseModelLNDatabase {
  BaseModelDomain toBaseModelDomain();
  Map<String, dynamic> toMap();
}