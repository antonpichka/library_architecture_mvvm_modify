import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

abstract class UpdateListModelToNamedServiceNPFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>
{
  UpdateListModelToNamedServiceNPFBDS();

  X? updateListModelToNamedServiceNP(
      C? typeParameterForFBDS);
}