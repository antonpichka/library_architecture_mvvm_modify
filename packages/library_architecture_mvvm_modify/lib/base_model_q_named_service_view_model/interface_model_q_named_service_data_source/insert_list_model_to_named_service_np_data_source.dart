import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract class InsertListModelToNamedServiceNPDataSource<T extends Object>
{
  Future<Result<T>?> insertListModelToNamedServiceNPDS();
}