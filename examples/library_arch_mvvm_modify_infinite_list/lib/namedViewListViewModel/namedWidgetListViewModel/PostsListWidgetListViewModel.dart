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
  final PostQThereIsStateViewModel postQThereIsStateViewModelForStartIndexFromJsonPlaceholder;

  PostsListWidgetListViewModel(
      this.postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder,
      this.boolQThereIsStateViewModelForAntiSpam,
      this.postQThereIsStateViewModelForStartIndexFromJsonPlaceholder);

  Stream<ListPost?>? get getStreamListPostForStartIndexFromJsonPlaceholder {
    return postQThereIsStateViewModelForStartIndexFromJsonPlaceholder.getStreamListPost;
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
    if(postQThereIsStateViewModelForStartIndexFromJsonPlaceholder
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
        .getListPostFromHttpClientServiceParameterInt(postQThereIsStateViewModelForStartIndexFromJsonPlaceholder.getListPost?.listModel?.length ?? 0);
    boolQThereIsStateViewModelForAntiSpam
        .getBool
        ?.isField = false;
    if(listPost
        !.exceptionController
        .isExceptionNotEqualsNull())
    {
      postQThereIsStateViewModelForStartIndexFromJsonPlaceholder
          .getListPost
          ?.setTwoParametersNamedForPostsListWidget(listPost);
      postQThereIsStateViewModelForStartIndexFromJsonPlaceholder
          .notifyStreamListPost();
      return;
    }
    postQThereIsStateViewModelForStartIndexFromJsonPlaceholder
        .getListPost
        ?.setOneParametersNamedForPostsListWidget(listPost);
    postQThereIsStateViewModelForStartIndexFromJsonPlaceholder
        .notifyStreamListPost();
    return;
  }
}