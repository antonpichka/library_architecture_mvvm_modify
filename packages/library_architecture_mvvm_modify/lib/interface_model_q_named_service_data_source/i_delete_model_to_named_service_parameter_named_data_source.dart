import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract interface class IDeleteModelToNamedServiceParameterNamedDataSource<
    T extends Object, Y extends Object> {
  Future<Result<T>> deleteModelToNamedServiceParameterNamedDS(Y parameter);
}
