import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

abstract base class BaseGetModelFromNamedServiceNPFBDS<X extends BaseModel,
    C extends Object> {
  X? getModelFromNamedServiceNPFBDS(C? parameter);
}
