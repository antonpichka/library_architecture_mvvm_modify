import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

abstract base class BaseUpdateModelToNamedServiceParameterNamedDataSource<
    T extends Object, Y extends Object> {
  Future<Result<T>> updateModelToNamedServiceParameterNamedDS(Y parameter);
}
