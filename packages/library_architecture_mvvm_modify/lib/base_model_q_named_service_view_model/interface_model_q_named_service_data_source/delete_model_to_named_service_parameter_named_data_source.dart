import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract class DeleteModelToNamedServiceParameterNamedDataSource<T extends Object,Y extends Object>
{
  Future<Result<T>?> deleteModelToNamedServiceParameterNamedDS(Y? parameter);
}