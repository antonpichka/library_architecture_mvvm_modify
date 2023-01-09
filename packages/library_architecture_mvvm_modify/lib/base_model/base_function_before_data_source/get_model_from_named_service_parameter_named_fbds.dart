import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

abstract class GetModelFromNamedServiceParameterNamedFBDS<Z extends BaseModel,X extends Object,C extends Object>
{
  GetModelFromNamedServiceParameterNamedFBDS();

  Z? getModelFromNamedServiceParameterNamed(
      X? parameter,
      C? parameterForFBDS);
}