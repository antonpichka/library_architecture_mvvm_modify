import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

abstract class InsertModelToNamedServiceParameterNamedDataSource<T extends BaseTypeParameter,Y extends BaseTypeParameter>
{
  Future<T?> insertModelToNamedServiceParameterNamed(Y? parameter);
}