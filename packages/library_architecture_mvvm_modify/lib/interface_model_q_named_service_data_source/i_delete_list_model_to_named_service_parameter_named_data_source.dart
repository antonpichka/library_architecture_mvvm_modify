import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract interface class IDeleteListModelToNamedServiceParameterNamedDataSource<
    T extends Object, Y extends Object> {
  Future<Result<T>> deleteListModelToNamedServiceParameterNamedDS(
      Y parameter);
}
