import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPostExt.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/PostExt.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_list_model_for_named_tip.dart';

class ListPostExtForArrayListPostExtTIP
    implements IListModelForNamedTIP<ListPostExt<PostExt>,List<PostExt>>
{
  @override
  ListPostExt<PostExt> getListModelForNamedTIP(
      List<PostExt> parameter)
  {
    return ListPostExt.success(parameter);
  }
}