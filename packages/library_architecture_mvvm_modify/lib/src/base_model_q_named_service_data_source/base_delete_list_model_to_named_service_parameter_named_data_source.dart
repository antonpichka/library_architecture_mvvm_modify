import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

abstract base class BaseDeleteListModelToNamedServiceParameterNamedDataSource<
    T extends Object, Y extends Object> {
  Future<Result<T>> deleteListModelToNamedServiceParameterNamedDS(Y parameter);
}
