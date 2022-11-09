import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model_named_database.dart';

class ListPost
    extends BaseListModelNamedDatabase<Post>
{
  ListPost(List<Post> listModel) : super(listModel);

}