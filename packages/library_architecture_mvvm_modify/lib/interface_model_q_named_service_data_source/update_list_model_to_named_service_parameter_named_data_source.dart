import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

abstract class UpdateListModelToNamedServiceParameterNamedDataSource<T extends BaseTypeParameter,Y extends BaseTypeParameter>
{
  Future<T?> updateListModelToNamedServiceParameterNamedDS(Y? parameter);
}