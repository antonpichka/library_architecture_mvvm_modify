import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_list_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';

class ListPostForNetworkExceptionTIP
    implements IListModelForNamedTIP<ListPost<Post>,NetworkException>
{
  @override
  ListPost<Post>? getListModelForNamedTIP(
      NetworkException? parameter)
  {
    return ListPost.exception(parameter!);
  }
}