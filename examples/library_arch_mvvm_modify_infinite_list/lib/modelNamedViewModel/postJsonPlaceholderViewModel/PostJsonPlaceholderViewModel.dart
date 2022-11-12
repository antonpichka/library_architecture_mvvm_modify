import 'package:library_arch_mvvm_modify_infinite_list/modelNamed/postJsonPlaceholder/ListPostJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamed/postJsonPlaceholder/PostJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/model/Post.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream_model.dart';

abstract class PostJsonPlaceholderViewModel
    extends BaseViewModel<PostJsonPlaceholder,ListPostJsonPlaceholder,Enum>
{
  PostJsonPlaceholderViewModel.thereIsDataSource(Object dataSource) : super.thereIsDataSource(dataSource);

  @override
  IStreamModel<PostJsonPlaceholder,ListPostJsonPlaceholder> initIStreamModel() {
    return DefaultStreamModel<PostJsonPlaceholder,ListPostJsonPlaceholder>(PostJsonPlaceholder.getPostJsonPlaceholder,ListPostJsonPlaceholder.success([]));
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