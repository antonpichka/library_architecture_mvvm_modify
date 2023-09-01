import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

abstract base class BaseInsertListModelToNamedServiceParameterNamedDataSource<
    T extends Object, Y extends Object> {
  Future<Result<T>> insertListModelToNamedServiceParameterNamedDS(Y parameter);
}
