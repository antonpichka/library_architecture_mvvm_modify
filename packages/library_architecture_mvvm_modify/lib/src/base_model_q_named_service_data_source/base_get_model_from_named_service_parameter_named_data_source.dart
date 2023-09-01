import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

abstract base class BaseGetModelFromNamedServiceParameterNamedDataSource<
    T extends BaseModel, Y extends Object> {
  Future<T> getModelFromNamedServiceParameterNamedDS(Y parameter);
}
