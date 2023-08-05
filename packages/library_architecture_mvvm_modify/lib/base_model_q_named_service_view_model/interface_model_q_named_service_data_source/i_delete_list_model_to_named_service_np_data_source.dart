import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract interface class IDeleteListModelToNamedServiceNPDataSource<
    T extends Object> {
  Future<Result<T>?> deleteListModelToNamedServiceNPDS();
}
