import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/postQHttpClientServiceViewModel/PostFirstBranchOneQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQThereIsStateViewModel/postQThereIsStateViewModel/PostFirstBranchOneQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedViewListViewModel/namedWidgetListViewModel/PostsListWidgetListViewModel.dart';
import 'package:meta/meta.dart';

class PostsListFirstBranchOneWidgetListViewModel
    extends PostsListWidgetListViewModel {
  PostsListFirstBranchOneWidgetListViewModel(
      super.postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder,
      super.boolQNoServiceViewModelForAntiSpam,
      super.postQThereIsStateViewModel);

  @protected
  @nonVirtual
  PostFirstBranchOneQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
      get postFirstBranchOneQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder =>
          postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
              as PostFirstBranchOneQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder;

  @protected
  @nonVirtual
  PostFirstBranchOneQThereIsStateViewModel
      get postFirstBranchOneQThereIsStateViewModel => postQThereIsStateViewModel
          as PostFirstBranchOneQThereIsStateViewModel;

  Future<void>
      getListPostFromHttpClientServiceParameterIntAndInGeneralOneTaskException() async {
    // 1
    final listPostFirstBranchOne =
        await postFirstBranchOneQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
            .getListPostFromHttpClientServiceParameterInt(0);
    postFirstBranchOneQThereIsStateViewModel.setListPost =
        listPostFirstBranchOne!;
    postFirstBranchOneQThereIsStateViewModel.notifyStreamListPost();
    return;
  }
}
