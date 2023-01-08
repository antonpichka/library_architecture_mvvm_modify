import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

abstract class InsertListModelToNamedServiceNPFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>
{
  InsertListModelToNamedServiceNPFBDS();

  X? insertListModelToNamedServiceNP(
      C? typeParameterForFBDS);
}