import 'package:library_arch_mvvm_modify_infinite_list/modelNamed/postJsonPlaceholder/ListPostJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamed/postJsonPlaceholder/PostJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/model/Post.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_model_named.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream_base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream_model_named.dart';

abstract class PostJsonPlaceholderViewModel
    extends BaseViewModel<PostJsonPlaceholder,ListPostJsonPlaceholder>
{
  PostJsonPlaceholderViewModel.thereIsDataSource(Object dataSource) : super.thereIsDataSource(dataSource);

  @override
  IStreamModelNamed<PostJsonPlaceholder,ListPostJsonPlaceholder> initIStreamModelForSuccess() {
    return DefaultStreamModelNamed<PostJsonPlaceholder,ListPostJsonPlaceholder>(PostJsonPlaceholder.getPostJsonPlaceholder,ListPostJsonPlaceholder.success([]));
  }

  @override
  IStreamBaseTypeParameter initIStreamBaseTypeParameter() {
    return DefaultStreamBaseTypeParameter();
  }

  @override
  PostJsonPlaceholder cloneModelNamedForSuccess(
      PostJsonPlaceholder modelNamed)
  {
    return PostJsonPlaceholder.success(Post(
        modelNamed.post.id,
        modelNamed.post.title,
        modelNamed.post.body));
  }

  @override
  ListPostJsonPlaceholder cloneListModelNamedForSuccess(
      ListPostJsonPlaceholder listModelNamed)
  {
    return ListPostJsonPlaceholder.success(listModelNamed.listModelNamed);
  }
}