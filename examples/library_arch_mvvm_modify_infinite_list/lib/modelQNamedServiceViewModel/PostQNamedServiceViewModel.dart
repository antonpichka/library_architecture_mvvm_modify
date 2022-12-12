import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';

abstract class PostQNamedServiceViewModel<T extends Post,Y extends ListPost,DataSource extends Object>
    extends BaseModelQNamedServiceViewModel<T,Y,DataSource>
{
  PostQNamedServiceViewModel.thereIsDataSource(super.dataSource, super.iCloneModelForSuccess,super.iCloneStreamModelForSuccess) : super.thereIsDataSource();
  PostQNamedServiceViewModel.noDataSource(super.list, super.iCloneModelForSuccess,super.iCloneStreamModelForSuccess) : super.noDataSource();
}