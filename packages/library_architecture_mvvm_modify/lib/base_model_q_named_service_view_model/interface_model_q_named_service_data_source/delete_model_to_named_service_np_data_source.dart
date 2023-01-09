import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract class DeleteModelToNamedServiceNPDataSource<T extends Object>
{
  Future<Result<T>?> deleteModelToNamedServiceNPDS();
}