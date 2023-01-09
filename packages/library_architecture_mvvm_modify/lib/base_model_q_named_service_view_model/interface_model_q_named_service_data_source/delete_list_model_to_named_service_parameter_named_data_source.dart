import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract class DeleteListModelToNamedServiceParameterNamedDataSource<T extends Object,Y extends Object>
{
  Future<Result<T>?> deleteListModelToNamedServiceParameterNamedDS(Y? parameter);
}