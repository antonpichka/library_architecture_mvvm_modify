import 'package:library_arch_mvvm_modify_infinite_list/model/postJsonPlaceholder/ListPostJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/postJsonPlaceholder/PostJsonPlaceholder.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream.dart';

abstract class PostJsonPlaceholderViewModel
    extends BaseViewModel<PostJsonPlaceholder,ListPostJsonPlaceholder,Enum>
{
  PostJsonPlaceholderViewModel.thereIsDataSource(Object dataSource) : super.thereIsDataSource(dataSource);

  @override
  IStream<PostJsonPlaceholder> initAndCloneIStream() {
    return DefaultStream<PostJsonPlaceholder>(PostJsonPlaceholder.getPostJsonPlaceholder,ListPostJsonPlaceholder([]));
  }

  @override
  PostJsonPlaceholder cloneModelNamed(
      PostJsonPlaceholder modelNamed)
  {
    return PostJsonPlaceholder(
        modelNamed.id,
        modelNamed.title,
        modelNamed.body);
  }
}