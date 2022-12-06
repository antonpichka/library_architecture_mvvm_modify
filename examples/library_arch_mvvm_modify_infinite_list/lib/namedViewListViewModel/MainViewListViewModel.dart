import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/boolQNoServiceViewModel/BoolQNoServiceViewModelUsingGetNPForAntiSpam.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/postQHttpClientServiceViewModel/PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedViewListViewModel/namedWidgetListViewModel/PostsListExtWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class MainViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQNamedServiceViewModel
  final _postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder =
  PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder();
  final _boolQNoServiceViewModelUsingGetNPForAntiSpam =
  BoolQNoServiceViewModelUsingGetNPForAntiSpam();

  // NamedWidgetListViewModel
  // late final PostsListWidgetListViewModel postsListWidgetListViewModel;
  late final PostsListExtWidgetListViewModel postsListExtWidgetListViewModel;

  MainViewListViewModel() {
    // postsListWidgetListViewModel = PostsListWidgetListViewModel(_postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder, _boolQNoServiceViewModelUsingGetNPForAntiSpam);
    postsListExtWidgetListViewModel = PostsListExtWidgetListViewModel(_postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder, _boolQNoServiceViewModelUsingGetNPForAntiSpam);
  }

  @override
  void dispose() {
    _postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder.dispose();
    _boolQNoServiceViewModelUsingGetNPForAntiSpam.dispose();
  }

 /* Future<void> getListPostFromHttpClientServiceParameterIntAndSetListPostAndInGeneralOneTask()
  async {
    // 1
    await _postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .getListPostFromHttpClientServiceParameterIntAndSetListPost(IntTypeParameter(0));
    _postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .notifyStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder();
    return;
  }*/
}