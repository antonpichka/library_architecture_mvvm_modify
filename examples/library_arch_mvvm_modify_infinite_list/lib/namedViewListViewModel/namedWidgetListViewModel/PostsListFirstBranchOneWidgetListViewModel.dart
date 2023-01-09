import 'package:library_arch_mvvm_modify_infinite_list/namedViewListViewModel/namedWidgetListViewModel/PostsListWidgetListViewModel.dart';

class PostsListFirstBranchOneWidgetListViewModel
    extends PostsListWidgetListViewModel
{
  PostsListFirstBranchOneWidgetListViewModel(
      super.postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder,
      super.boolQNoServiceViewModelUsingGetNPForAntiSpam,
      super.postQThereIsStateViewModelForStartIndexFromJsonPlaceholder) : super();

  Future<void> getListPostFromHttpClientServiceParameterIntAndInGeneralOneTaskException()
  async {
    // 1
    final listPost = await postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .getListPostFromHttpClientServiceParameterInt(0);
    postQThereIsStateViewModelForStartIndexFromJsonPlaceholder
        .setListPostForStartIndexFromJsonPlaceholder = listPost!;
    postQThereIsStateViewModelForStartIndexFromJsonPlaceholder
        .notifyStreamListPostForStartIndexFromJsonPlaceholder();
    return;
  }
}