import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract interface class IInsertListModelToNamedServiceParameterNamedDataSource<
    T extends Object, Y extends Object> {
  Future<Result<T>?> insertListModelToNamedServiceParameterNamedDS(
      Y? parameter);
}
