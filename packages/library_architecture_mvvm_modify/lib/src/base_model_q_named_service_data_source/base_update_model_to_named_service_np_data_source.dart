import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseUpdateModelToNamedServiceNPDataSource<
    T extends Object> {
  Future<Result<T>> updateModelToNamedServiceNPDS();
}
