import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract class UpdateModelToNamedServiceParameterNamedFBDS<Z extends Object,X extends Object,C extends Object>
{
  UpdateModelToNamedServiceParameterNamedFBDS();

  Result<Z>? updateModelToNamedServiceParameterNamed(
      X? parameter,
      C? parameterForFBDS);
}