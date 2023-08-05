import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract interface class IInsertModelToNamedServiceParameterNamedDataSource<
    T extends Object, Y extends Object> {
  Future<Result<T>?> insertModelToNamedServiceParameterNamedDS(Y? parameter);
}
