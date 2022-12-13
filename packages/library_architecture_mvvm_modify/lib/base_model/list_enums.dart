import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/enums.dart';

class ListEnums<T extends Enums>
    extends BaseListModel<T>
{
  ListEnums.success(super.list) : super.success();
  ListEnums.exception(super.exception) : super.exception();
  ListEnums.successForFBDS() : super.successForFBDS();
  ListEnums.exceptionForFBDS(super.exception) : super.exceptionForFBDS();
}