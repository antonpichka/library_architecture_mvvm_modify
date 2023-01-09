import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

abstract class GetListModelFromNamedServiceParameterNamedFBDS<Z extends BaseListModel,X extends Object,C extends Object>
{
  GetListModelFromNamedServiceParameterNamedFBDS();

  Z? getListModelFromNamedServiceParameterNamed(
      X? parameter,
      C? parameterForFBDS);
}