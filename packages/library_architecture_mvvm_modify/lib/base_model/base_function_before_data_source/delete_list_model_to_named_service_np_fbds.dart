import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract class DeleteListModelToNamedServiceNPFBDS<X extends Object,C extends Object>
{
  DeleteListModelToNamedServiceNPFBDS();

  Result<X>? deleteListModelToNamedServiceNP(
      C? parameterForFBDS);
}