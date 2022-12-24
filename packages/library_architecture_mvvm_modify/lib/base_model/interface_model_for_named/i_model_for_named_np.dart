import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

abstract class IModelForNamedNP<T extends BaseModel> {
  T? getModelForNamedNP();
}