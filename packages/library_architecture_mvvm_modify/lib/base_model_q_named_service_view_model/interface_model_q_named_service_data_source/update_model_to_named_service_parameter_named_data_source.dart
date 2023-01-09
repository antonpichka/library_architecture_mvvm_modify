import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract class UpdateModelToNamedServiceParameterNamedDataSource<T extends Object,Y extends Object>
{
  Future<Result<T>?> updateModelToNamedServiceParameterNamedDS(Y? parameter);
}