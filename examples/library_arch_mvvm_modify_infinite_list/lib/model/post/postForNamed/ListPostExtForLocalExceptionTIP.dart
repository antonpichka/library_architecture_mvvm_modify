import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPostExt.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_list_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';

class ListPostExtForLocalExceptionTIP
    implements IListModelForNamedTIP<ListPostExt,LocalException>
{
  @override
  ListPostExt getListModelForNamedTIP(
      LocalException parameter)
  {
    return ListPostExt.exception(parameter);
  }
}