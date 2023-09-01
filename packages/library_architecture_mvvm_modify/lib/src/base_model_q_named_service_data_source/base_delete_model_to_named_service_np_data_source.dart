import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

abstract base class BaseDeleteModelToNamedServiceNPDataSource<
    T extends Object> {
  Future<Result<T>> deleteModelToNamedServiceNPDS();
}
