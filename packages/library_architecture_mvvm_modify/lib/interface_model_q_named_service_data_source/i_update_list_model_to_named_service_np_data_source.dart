import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract interface class IUpdateListModelToNamedServiceNPDataSource<
    T extends Object> {
  Future<Result<T>> updateListModelToNamedServiceNPDS();
}
