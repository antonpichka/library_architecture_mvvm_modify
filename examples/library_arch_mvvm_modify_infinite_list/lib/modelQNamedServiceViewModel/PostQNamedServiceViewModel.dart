import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';

abstract class PostQNamedServiceViewModel<T extends Post,Y extends ListPost<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
{
  PostQNamedServiceViewModel.thereIsDataSource(super.iCloneStreamModelForSuccess) : super.thereIsDataSource();
  PostQNamedServiceViewModel.noDataSource(super.list,super.iCloneStreamModelForSuccess) : super.noDataSource();
}