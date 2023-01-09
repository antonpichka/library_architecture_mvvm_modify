import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract class DeleteListModelToNamedServiceNPDataSource<T extends Object>
{
  Future<Result<T>?> deleteListModelToNamedServiceNPDS();
}