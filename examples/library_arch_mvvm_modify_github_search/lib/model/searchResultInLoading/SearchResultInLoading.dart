import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class SearchResultInLoading
    extends BaseModel
{
  SearchResult? _searchResult;

  SearchResultInLoading.success(this._searchResult) : super.success(_searchResult?.getParameterUniqueId);

  static SearchResultInLoading get getSearchResultInLoadingForSuccess => SearchResultInLoading.success(SearchResult.getSearchResultForSuccess);

  @protected
  @nonVirtual
  SearchResult? get getParameterSearchResult => _searchResult;

  @protected
  @nonVirtual
  set setParameterSearchResult(SearchResult? searchResult) => _searchResult = searchResult;
}