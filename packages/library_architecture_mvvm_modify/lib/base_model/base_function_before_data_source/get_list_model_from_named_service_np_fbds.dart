import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

abstract class GetListModelFromNamedServiceNPFBDS<X extends BaseListModel,C extends Object>
{
  GetListModelFromNamedServiceNPFBDS();

  X? getListModelFromNamedServiceNP(
      C? parameterForFBDS);
}