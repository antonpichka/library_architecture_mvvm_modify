import 'package:library_arch_mvvm_modify_infinite_list/namedViewListViewModel/namedWidgetListViewModel/PostsListWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';

class PostsListFirstBranchOneWidgetListViewModel
    extends PostsListWidgetListViewModel
{
  PostsListFirstBranchOneWidgetListViewModel(super.postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder, super.boolQNoServiceViewModelUsingGetNPForAntiSpam) : super();

  Future<void> getListPostFromHttpClientServiceParameterIntAndSetListPostAndInGeneralOneTask()
  async {
    // 1
    await postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .getListPostFromHttpClientServiceParameterIntAndSetListPost(IntTypeParameter.success(0));
    postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
        .notifyStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder();
    return;
  }
}