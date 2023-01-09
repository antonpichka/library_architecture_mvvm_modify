import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

abstract class GetModelFromNamedServiceNPFBDS<X extends BaseModel,C extends Object>
{
  GetModelFromNamedServiceNPFBDS();

  X? getModelFromNamedServiceNP(
      C? parameterForFBDS);
}