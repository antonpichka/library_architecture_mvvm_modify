import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/ListSearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQThereIsStateViewModel/searchResultInLoadingQThereIsStateViewModel/SearchResultInLoadingQThereIsStateViewModel.dart';
import 'package:meta/meta.dart';

class SearchBodyWidgetListViewModel {
  @protected
  final SearchResultInLoadingQThereIsStateViewModel searchResultInLoadingQThereIsStateViewModel;

  SearchBodyWidgetListViewModel(this.searchResultInLoadingQThereIsStateViewModel);

  Stream<ListSearchResultInLoading?>? get getStreamListSearchResultInLoading {
    return searchResultInLoadingQThereIsStateViewModel.getStreamListSearchResultInLoading;
  }
}