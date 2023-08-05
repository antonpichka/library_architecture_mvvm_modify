import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract interface class IUpdateModelToNamedServiceParameterNamedDataSource<
    T extends Object, Y extends Object> {
  Future<Result<T>?> updateModelToNamedServiceParameterNamedDS(Y? parameter);
}
