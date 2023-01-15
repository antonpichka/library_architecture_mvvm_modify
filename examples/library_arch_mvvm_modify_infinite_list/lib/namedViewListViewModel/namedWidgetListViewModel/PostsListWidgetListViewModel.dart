import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/postQHttpClientServiceViewModel/PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQThereIsStateViewModel/postQThereIsStateViewModel/PostQThereIsStateViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/bool_q_there_is_state_view_model.dart';
import 'package:meta/meta.dart';

class PostsListWidgetListViewModel {
  @protected
  final PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder;
  @protected
  final BoolQThereIsStateViewModel boolQThereIsStateViewModelForAntiSpam;
  @protected
  final PostQThereIsStateViewModel postQThereIsStateViewModel;

  PostsListWidgetListViewModel(
      this.postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder,
      this.boolQThereIsStateViewModelForAntiSpam,
      this.postQThereIsStateViewModel);

  Stream<ListPost?>? get getStreamListPost {
    return postQThereIsStateViewModel.getStreamListPost;
  }

  Future<void> getListPostFromHttpClientServiceParameterIntAndInGeneralOneTask()
  async {
    await Future.delayed(const Duration(seconds: 1));
    if(boolQThereIsStateViewModelForAntiSpam
        .getBool
        ?.isField ?? false)
    {
      return;
    }
    if(postQThereIsStateViewModel
        .getListPost
        ?.getOneParametersNamedForPostsListWidget ?? true)
    {
      return;
    }
    boolQThereIsStateViewModelForAntiSpam
        .getBool
        ?.isField = true;
    // 1
    final listPost = await postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .getListPostFromHttpClientServiceParameterInt(postQThereIsStateViewModel.getListPost?.listModel?.length ?? 0);
    boolQThereIsStateViewModelForAntiSpam
        .getBool
        ?.isField = false;
    if(listPost
        !.exceptionController
        .isExceptionNotEqualsNull())
    {
      postQThereIsStateViewModel
          .getListPost
          ?.setTwoParametersNamedForPostsListWidget = listPost;
      postQThereIsStateViewModel
          .notifyStreamListPost();
      return;
    }
    postQThereIsStateViewModel
        .getListPost
        ?.setOneParametersNamedForPostsListWidget = listPost;
    postQThereIsStateViewModel
        .notifyStreamListPost();
    return;
  }
}