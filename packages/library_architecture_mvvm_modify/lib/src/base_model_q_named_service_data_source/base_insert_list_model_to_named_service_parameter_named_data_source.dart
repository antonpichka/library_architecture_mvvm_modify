import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseInsertListModelToNamedServiceParameterNamedDataSource<
    T extends Object, Y extends Object> {
  const BaseInsertListModelToNamedServiceParameterNamedDataSource();

  Future<Result<T>> insertListModelToNamedServiceParameterNamedDS(Y parameter);
}
