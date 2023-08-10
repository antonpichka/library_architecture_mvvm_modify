import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract interface class IUpdateListModelToNamedServiceParameterNamedDataSource<
    T extends Object, Y extends Object> {
  Future<Result<T>> updateListModelToNamedServiceParameterNamedDS(
      Y parameter);
}
