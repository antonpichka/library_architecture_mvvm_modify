import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract class InsertModelToNamedServiceNPFBDS<X extends Object,C extends Object>
{
  InsertModelToNamedServiceNPFBDS();

  Result<X>? insertModelToNamedServiceNP(
      C? parameterForFBDS);
}