import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract interface class IInsertListModelToNamedServiceNPDataSource<
    T extends Object> {
  Future<Result<T>> insertListModelToNamedServiceNPDS();
}
