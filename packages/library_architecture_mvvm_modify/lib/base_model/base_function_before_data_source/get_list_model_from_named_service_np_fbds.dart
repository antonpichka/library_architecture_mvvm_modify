import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

abstract class GetListModelFromNamedServiceNPFBDS<X extends BaseListModel,C extends BaseTypeParameter>
{
  GetListModelFromNamedServiceNPFBDS();

  X? getListModelFromNamedServiceNP(
      C? typeParameterForFBDS);
}