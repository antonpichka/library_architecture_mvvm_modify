import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseUpdateListModelToNamedServiceParameterNamedDataSource<
    T extends Object, Y extends Object> {
  const BaseUpdateListModelToNamedServiceParameterNamedDataSource();

  Future<Result<T>> updateListModelToNamedServiceParameterNamedDS(Y parameter);
}
