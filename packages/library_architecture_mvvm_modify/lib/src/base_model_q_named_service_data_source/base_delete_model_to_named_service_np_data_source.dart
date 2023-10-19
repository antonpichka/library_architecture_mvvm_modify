import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseDeleteModelToNamedServiceNPDataSource<
    T extends Object> {

  const BaseDeleteModelToNamedServiceNPDataSource();

  Future<Result<T>> deleteModelToNamedServiceNPDS();
}
