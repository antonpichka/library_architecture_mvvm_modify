import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract class InsertModelToNamedServiceNPDataSource<T extends Object>
{
  Future<Result<T>?> insertModelToNamedServiceNPDS();
}