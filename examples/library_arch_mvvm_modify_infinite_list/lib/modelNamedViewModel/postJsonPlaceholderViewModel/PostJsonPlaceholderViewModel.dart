import 'package:library_arch_mvvm_modify_infinite_list/model/postJsonPlaceholder/ListPostJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/postJsonPlaceholder/PostJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/customModel/Post.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream.dart';

abstract class PostJsonPlaceholderViewModel
    extends BaseViewModel<PostJsonPlaceholder,ListPostJsonPlaceholder,Enum>
{
  PostJsonPlaceholderViewModel.thereIsDataSource(Object dataSource) : super.thereIsDataSource(dataSource);

  @override
  IStream<PostJsonPlaceholder,ListPostJsonPlaceholder> initAndCloneIStream() {
    return DefaultStream<PostJsonPlaceholder,ListPostJsonPlaceholder>(PostJsonPlaceholder.getPostJsonPlaceholder,ListPostJsonPlaceholder.success([]));
  }

  @override
  PostJsonPlaceholder cloneModelNamed(
      PostJsonPlaceholder modelNamed)
  {
    return PostJsonPlaceholder.success(Post(
        modelNamed.post.id,
        modelNamed.post.title,
        modelNamed.post.body));
  }

  @override
  ListPostJsonPlaceholder cloneListModelNamed(
      ListPostJsonPlaceholder listModelNamed)
  {
    return ListPostJsonPlaceholder.success(listModelNamed.listModelNamed);
  }
}