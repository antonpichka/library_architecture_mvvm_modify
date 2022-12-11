import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedViewListViewModel/namedWidgetListViewModel/PostsListWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';

class PostsListExtWidgetListViewModel<Q extends Post,W extends ListPost,E extends Bool,R extends ListBool>
    extends PostsListWidgetListViewModel<Q,W,E,R>
{
  PostsListExtWidgetListViewModel(super._postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder, super._boolQNoServiceViewModelUsingGetNPForAntiSpam) : super();

  Future<void> getListPostFromHttpClientServiceParameterIntAndSetListPostAndInGeneralOneTask()
  async {
    // 1
    await getPostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .getListPostFromHttpClientServiceParameterIntAndSetListPost(IntTypeParameter.success(0));
    getPostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .notifyStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder();
    return;
  }
}