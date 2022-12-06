import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

abstract class PostQNamedServiceViewModel<DataSource extends Object>
    extends BaseModelQNamedServiceViewModel<Post,ListPost,DataSource>
{
  PostQNamedServiceViewModel.thereIsDataSource(DataSource dataSource) : super.thereIsDataSource(dataSource);
  PostQNamedServiceViewModel.noDataSource(List<EnumBaseModelAndBaseListModelVM> list) : super.noDataSource(list);

  @override
  IStreamModel<Post,ListPost> initIStreamModelForSuccess() {
    return DefaultStreamModel<Post,ListPost>(Post.getPostForSuccess,ListPost.success([]));
  }

  @override
  Post? cloneModelForSuccess(
      Post? model)
  {
    return Post.success(
        model?.id,
        model?.title,
        model?.body);
  }

  @override
  ListPost? cloneListModelForSuccess(
      ListPost? listModel)
  {
    return ListPost.success(listModel?.list);
  }
}