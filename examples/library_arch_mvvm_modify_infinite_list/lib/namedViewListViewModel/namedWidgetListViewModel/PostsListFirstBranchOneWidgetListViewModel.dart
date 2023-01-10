import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/postQHttpClientServiceViewModel/PostFirstBranchOneQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQThereIsStateViewModel/postQThereIsStateViewModel/PostFirstBranchOneQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedViewListViewModel/namedWidgetListViewModel/PostsListWidgetListViewModel.dart';
import 'package:meta/meta.dart';

class PostsListFirstBranchOneWidgetListViewModel
    extends PostsListWidgetListViewModel
{
  PostsListFirstBranchOneWidgetListViewModel(
      super.postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder,
      super.boolQNoServiceViewModelUsingGetNPForAntiSpam,
      super.postQThereIsStateViewModelForStartIndexFromJsonPlaceholder) : super();

  @protected
  @nonVirtual
  PostFirstBranchOneQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder get postFirstBranchOneQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder =>
      postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder as PostFirstBranchOneQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder;

  @protected
  @nonVirtual
  PostFirstBranchOneQThereIsStateViewModel get postFirstBranchOneQThereIsStateViewModelForStartIndexFromJsonPlaceholder =>
      postQThereIsStateViewModelForStartIndexFromJsonPlaceholder as PostFirstBranchOneQThereIsStateViewModel;

  Future<void> getListPostFirstBranchOneFromHttpClientServiceParameterIntAndInGeneralOneTask()
  async {
    // 1
    final listPostFirstBranchOne = await postFirstBranchOneQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .getListPostFirstBranchOneFromHttpClientServiceParameterInt(0);
    postFirstBranchOneQThereIsStateViewModelForStartIndexFromJsonPlaceholder
        .setListPostFirstBranchOne = listPostFirstBranchOne!;
    postFirstBranchOneQThereIsStateViewModelForStartIndexFromJsonPlaceholder
        .notifyStreamListPostFirstBranchOne();
    return;
  }
}