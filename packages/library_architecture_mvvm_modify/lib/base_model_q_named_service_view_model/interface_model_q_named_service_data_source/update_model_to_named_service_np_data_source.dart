import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract class UpdateModelToNamedServiceNPDataSource<T extends Object>
{
  Future<Result<T>?> updateModelToNamedServiceNPDS();
}