import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract class InsertListModelToNamedServiceNPFBDS<X extends Object,C extends Object>
{
  InsertListModelToNamedServiceNPFBDS();

  Result<X>? insertListModelToNamedServiceNP(
      C? parameterForFBDS);
}