import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/ListSearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/SearchResultInLoading.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';

class SearchResultInLoadingQThereIsStateViewModel<T extends SearchResultInLoading,Y extends ListSearchResultInLoading<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  SearchResultInLoadingQThereIsStateViewModel(super.iStreamModelForSuccess);


  Stream<Y>? get getStreamListSearchResultInLoading {
    return getStreamListModel;
  }

  Y? get getListSearchResultInLoading {
    return getListModel;
  }

  void notifyStreamListSearchResultInLoading() {
    notifyStreamListModel();
  }
}