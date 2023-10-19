import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseDeleteModelToNamedServiceParameterNamedDataSource<
    T extends Object, Y extends Object> {
  const BaseDeleteModelToNamedServiceParameterNamedDataSource();

  Future<Result<T>> deleteModelToNamedServiceParameterNamedDS(Y parameter);
}
