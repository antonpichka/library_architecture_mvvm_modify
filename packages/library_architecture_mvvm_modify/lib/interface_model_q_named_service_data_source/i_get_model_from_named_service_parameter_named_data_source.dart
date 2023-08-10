import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

abstract interface class IGetModelFromNamedServiceParameterNamedDataSource<
    T extends BaseModel, Y extends Object> {
  Future<T> getModelFromNamedServiceParameterNamedDS(Y parameter);
}
