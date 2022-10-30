import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/PostJsonPlaceholderDatabase.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'Post.dart';

class ListPostJsonPlaceholderDatabase
    extends BaseListModelNamedDatabase<ListPost,PostJsonPlaceholderDatabase>
{
  ListPostJsonPlaceholderDatabase(List<PostJsonPlaceholderDatabase> listModelNamedDatabase) : super(listModelNamedDatabase);

  @override
  ListPost toBaseListModel() {
    List<Post> listPost = List.generate(getListModelNamedDatabase.length, (index) => getListModelNamedDatabase[index].toBaseModel());
    return ListPost(listPost);
  }
}