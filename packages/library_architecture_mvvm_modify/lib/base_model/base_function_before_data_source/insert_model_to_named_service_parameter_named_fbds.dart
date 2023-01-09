import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract class InsertModelToNamedServiceParameterNamedFBDS<Z extends Object,X extends Object,C extends Object>
{
  InsertModelToNamedServiceParameterNamedFBDS();

  Result<Z>? insertModelToNamedServiceParameterNamed(
      X? parameter,
      C? parameterForFBDS);
}