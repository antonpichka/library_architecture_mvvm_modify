import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

abstract class GetModelFromNamedServiceNPFBDS<X extends BaseModel,C extends BaseTypeParameter>
{
  GetModelFromNamedServiceNPFBDS();

  X? getModelFromNamedServiceNP(
      C? typeParameterForFBDS);
}