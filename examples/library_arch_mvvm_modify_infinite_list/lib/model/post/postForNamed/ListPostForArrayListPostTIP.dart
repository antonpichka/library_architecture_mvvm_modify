import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_list_model_for_named_tip.dart';

class ListPostForArrayListPostTIP
    implements IListModelForNamedTIP<ListPost<Post>,List<Post>>
{
  @override
  ListPost<Post> getListModelForNamedTIP(
      List<Post> parameter)
  {
    return ListPost.success(parameter);
  }
}