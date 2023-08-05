import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract interface class IDeleteModelToNamedServiceNPDataSource<
    T extends Object> {
  Future<Result<T>?> deleteModelToNamedServiceNPDS();
}
