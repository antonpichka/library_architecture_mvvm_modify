import 'package:library_architecture_mvvm_modify/utility/result.dart';

abstract class UpdateListModelToNamedServiceNPFBDS<X extends Object,C extends Object>
{
  UpdateListModelToNamedServiceNPFBDS();

  Result<X>? updateListModelToNamedServiceNP(
      C? parameterForFBDS);
}