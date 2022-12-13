import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';

class ListInt<T extends Int>
    extends BaseListModel<T>
{
  ListInt.success(super.list) : super.success();
  ListInt.exception(super.exception) : super.exception();
  ListInt.successForFBDS() : super.successForFBDS();
  ListInt.exceptionForFBDS(super.exception) : super.exceptionForFBDS();
}