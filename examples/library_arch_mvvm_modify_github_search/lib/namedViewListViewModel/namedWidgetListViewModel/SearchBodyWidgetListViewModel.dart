import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/ListSearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/SearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQNamedServiceViewModel/searchResultInLoadingQNoServiceViewModel/SearchResultInLoadingQNoServiceViewModelUsingGetListNP.dart';

class SearchBodyWidgetListViewModel {
  final SearchResultInLoadingQNoServiceViewModelUsingGetListNP<SearchResultInLoading,ListSearchResultInLoading<SearchResultInLoading>> _searchResultInLoadingQNoServiceViewModelUsingGetListNP;

  SearchBodyWidgetListViewModel(this._searchResultInLoadingQNoServiceViewModelUsingGetListNP);

  Stream<ListSearchResultInLoading<SearchResultInLoading>>? get getStreamListSearchResultInLoadingUsingGetListNP {
    return _searchResultInLoadingQNoServiceViewModelUsingGetListNP.getStreamListSearchResultInLoadingUsingGetListNP;
  }
}