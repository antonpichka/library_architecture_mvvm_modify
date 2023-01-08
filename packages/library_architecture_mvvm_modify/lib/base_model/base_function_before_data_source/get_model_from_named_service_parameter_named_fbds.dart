import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

abstract class GetModelFromNamedServiceParameterNamedFBDS<Z extends BaseModel,X extends BaseTypeParameter,C extends BaseTypeParameter>
{
  GetModelFromNamedServiceParameterNamedFBDS();

  Z? getModelFromNamedServiceParameterNamed(
      X? typeParameter,
      C? typeParameterForFBDS);
}