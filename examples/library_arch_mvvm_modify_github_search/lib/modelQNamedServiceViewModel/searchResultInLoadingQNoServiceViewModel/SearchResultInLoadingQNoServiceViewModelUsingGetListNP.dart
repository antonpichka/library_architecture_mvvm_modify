import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/ListSearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/SearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQNamedServiceViewModel/SearchResultInLoadingQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_for_i_stream_model_vm.dart';

class SearchResultInLoadingQNoServiceViewModelUsingGetListNP<T extends SearchResultInLoading,Y extends ListSearchResultInLoading<T>>
    extends SearchResultInLoadingQNamedServiceViewModel<T,Y,Object>
{
  SearchResultInLoadingQNoServiceViewModelUsingGetListNP(ICloneStreamModelForSuccess<T,Y> iCloneStreamModelForSuccess) : super.noDataSource([EnumForIStreamModelVM.getListNP],iCloneStreamModelForSuccess);

  @override
  Object thisClass() {
    return this;
  }

  Stream<Y>? get getStreamListSearchResultInLoadingUsingGetListNP {
    return getStreamListModel(EnumForIStreamModelVM.getListNP);
  }

  Y? get getListSearchResultInLoadingUsingGetListNP {
    return getListModel(EnumForIStreamModelVM.getListNP);
  }

  void notifyStreamListSearchResultInLoadingUsingGetListNP() {
    notifyStreamListModel(EnumForIStreamModelVM.getListNP);
  }
}