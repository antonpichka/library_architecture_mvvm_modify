import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract class UpdateListModelToNamedServiceNPDataSource<T extends Object>
{
  Future<Result<T>?> updateListModelToNamedServiceNPDS();
}