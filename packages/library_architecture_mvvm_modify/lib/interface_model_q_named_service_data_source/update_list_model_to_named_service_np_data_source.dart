import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

abstract class UpdateListModelToNamedServiceNPDataSource<T extends BaseTypeParameter>
{
  Future<T?> updateListModelToNamedServiceNP();
}