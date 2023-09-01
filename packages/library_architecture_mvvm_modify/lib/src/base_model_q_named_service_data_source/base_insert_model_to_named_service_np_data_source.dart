import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

abstract base class BaseInsertModelToNamedServiceNPDataSource<
    T extends Object> {
  Future<Result<T>> insertModelToNamedServiceNPDS();
}
