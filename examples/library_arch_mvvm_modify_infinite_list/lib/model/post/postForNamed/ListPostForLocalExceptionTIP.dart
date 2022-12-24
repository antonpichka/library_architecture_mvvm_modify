import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_list_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';

class ListPostForLocalExceptionTIP
    implements IListModelForNamedTIP<ListPost<Post>,LocalException>
{
  @override
  ListPost<Post>? getListModelForNamedTIP(
      LocalException? parameter)
  {
    return ListPost.exception(parameter!);
  }

}