import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

abstract class IModelForNamedTIP<T extends BaseModel,Y extends Object> {
  T? getModelForNamedTIP(Y? parameter);
}