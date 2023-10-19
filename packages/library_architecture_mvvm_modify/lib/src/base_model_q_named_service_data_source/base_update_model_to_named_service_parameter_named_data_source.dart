import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseUpdateModelToNamedServiceParameterNamedDataSource<
    T extends Object, Y extends Object> {
  const BaseUpdateModelToNamedServiceParameterNamedDataSource();

  Future<Result<T>> updateModelToNamedServiceParameterNamedDS(Y parameter);
}
