import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract class InsertListModelToNamedServiceParameterNamedDataSource<T extends Object,Y extends Object>
{
  Future<Result<T>?> insertListModelToNamedServiceParameterNamedDS(Y? parameter);
}