import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

abstract class InsertModelToNamedServiceNPFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>
{
  InsertModelToNamedServiceNPFBDS();

  X? insertModelToNamedServiceNP(
      C? typeParameterForFBDS);
}