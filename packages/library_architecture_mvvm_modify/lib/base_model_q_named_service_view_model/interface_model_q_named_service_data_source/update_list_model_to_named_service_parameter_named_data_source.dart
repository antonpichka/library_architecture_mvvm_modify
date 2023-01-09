import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract class UpdateListModelToNamedServiceParameterNamedDataSource<T extends Object,Y extends Object>
{
  Future<Result<T>?> updateListModelToNamedServiceParameterNamedDS(Y? parameter);
}