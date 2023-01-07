import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/postQHttpClientServiceViewModel/PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQThereIsStateViewModel/boolQThereIsStateViewModel/BoolQThereIsStateViewModelForAntiSpam.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQThereIsStateViewModel/postQThereIsStateViewModel/PostQThereIsStateViewModelForStartIndexFromJsonPlaceholder.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';
import 'package:meta/meta.dart';

class PostsListWidgetListViewModel {
  @protected
  final PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder<Post,ListPost<Post>> postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder;
  @protected
  final BoolQThereIsStateViewModelForAntiSpam<Bool,ListBool<Bool>> boolQThereIsStateViewModelForAntiSpam;
  @protected
  final PostQThereIsStateViewModelForStartIndexFromJsonPlaceholder<Post,ListPost<Post>> postQThereIsStateViewModelForStartIndexFromJsonPlaceholder;

  PostsListWidgetListViewModel(
      this.postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder,
      this.boolQThereIsStateViewModelForAntiSpam,
      this.postQThereIsStateViewModelForStartIndexFromJsonPlaceholder);

  Stream<ListPost<Post>>? get getStreamListPostForStartIndexFromJsonPlaceholder {
    return postQThereIsStateViewModelForStartIndexFromJsonPlaceholder.getStreamListPostForStartIndexFromJsonPlaceholder;
  }

  Future<void> getListPostFromHttpClientServiceParameterIntAndInGeneralOneTask()
  async {
    await Future.delayed(const Duration(seconds: 1));
    if(boolQThereIsStateViewModelForAntiSpam
        .getBoolForAntiSpam
        !.isField)
    {
      return;
    }
    if(postQThereIsStateViewModelForStartIndexFromJsonPlaceholder
        .getListPostForStartIndexFromJsonPlaceholder
        ?.getOneParametersNamedForPostsListWidget ?? true)
    {
      return;
    }
    boolQThereIsStateViewModelForAntiSpam
        .getBoolForAntiSpam
        ?.isField = true;
    // 1
    final listPost = await postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .getListPostFromHttpClientServiceParameterInt(IntTypeParameter.success(postQThereIsStateViewModelForStartIndexFromJsonPlaceholder.getListPostForStartIndexFromJsonPlaceholder?.list?.length));
    boolQThereIsStateViewModelForAntiSpam
        .getBoolForAntiSpam
        ?.isField = false;
    if(listPost
        !.exceptionController
        .isExceptionNotEqualsNull())
    {
      postQThereIsStateViewModelForStartIndexFromJsonPlaceholder
          .getListPostForStartIndexFromJsonPlaceholder
          ?.setTwoParametersNamedForPostsListWidget(listPost);
      postQThereIsStateViewModelForStartIndexFromJsonPlaceholder
          .notifyStreamListPostForStartIndexFromJsonPlaceholder();
      return;
    }
    postQThereIsStateViewModelForStartIndexFromJsonPlaceholder
        .getListPostForStartIndexFromJsonPlaceholder
        ?.setOneParametersNamedForPostsListWidget(listPost);
    postQThereIsStateViewModelForStartIndexFromJsonPlaceholder
        .notifyStreamListPostForStartIndexFromJsonPlaceholder();
    return;
  }
}