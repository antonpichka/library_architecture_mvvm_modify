import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract class UpdateModelToNamedServiceNPFBDS<X extends Object,C extends Object>
{
  UpdateModelToNamedServiceNPFBDS();

  Result<X>? updateModelToNamedServiceNP(
      C? parameterForFBDS);
}