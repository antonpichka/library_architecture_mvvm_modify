import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseDeleteListModelToNamedServiceParameterNamedDataSource<
    T extends Object, Y extends Object> {
  const BaseDeleteListModelToNamedServiceParameterNamedDataSource();

  Future<Result<T>> deleteListModelToNamedServiceParameterNamedDS(Y parameter);
}
