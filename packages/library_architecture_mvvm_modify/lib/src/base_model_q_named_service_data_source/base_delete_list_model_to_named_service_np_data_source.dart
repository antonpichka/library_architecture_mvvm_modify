import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

abstract base class BaseDeleteListModelToNamedServiceNPDataSource<
    T extends Object> {
  Future<Result<T>> deleteListModelToNamedServiceNPDS();
}
