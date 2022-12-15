import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/ListSearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/SearchResultInLoading.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

class ListSearchResultInLoading<T extends SearchResultInLoading>
    extends BaseListModel<T>
{
  bool? _isLoading;

  ListSearchResultInLoading.success(super.list,this._isLoading) : super.success();

  @protected
  @nonVirtual
  bool? get getParameterIsLoading => _isLoading;

  @protected
  @nonVirtual
  set setParameterIsLoading(bool isLoading) => _isLoading = isLoading;
  set setOneParametersNamedForSearchBarWidget(bool isLoading) => _isLoading = isLoading;
  void setTwoParametersNamedForSearchBarWidget(bool isLoading,ListSearchResult<SearchResult> listSearchResult) {
    List<SearchResultInLoading> listSearchResultInLoading = List.empty(growable: true);
    listSearchResult.getParameterList?.forEach((SearchResult searchResult) {
      listSearchResultInLoading.add(SearchResultInLoading.success(searchResult));
    });
    _isLoading = isLoading;
    setParameterList = listSearchResultInLoading as List<T>;
    setParameterExceptionController = listSearchResult.getParameterExceptionController;
  }
  set setThreeParametersNamedForSearchBarWidget(List<T> listSearchResultInLoading) => setParameterList = listSearchResultInLoading;
}