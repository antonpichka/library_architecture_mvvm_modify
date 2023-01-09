import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract class DeleteModelToNamedServiceNPFBDS<X extends Object,C extends Object>
{
  DeleteModelToNamedServiceNPFBDS();

  Result<X>? deleteModelToNamedServiceNP(
      C? parameterForFBDS);
}