import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseInsertModelToNamedServiceParameterNamedDataSource<
    T extends Object, Y extends Object> {
  const BaseInsertModelToNamedServiceParameterNamedDataSource();

  Future<Result<T>> insertModelToNamedServiceParameterNamedDS(Y parameter);
}
