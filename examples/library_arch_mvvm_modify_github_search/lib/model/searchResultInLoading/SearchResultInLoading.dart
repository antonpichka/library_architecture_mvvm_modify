import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class SearchResultInLoading
    extends BaseModel
{
  @protected
  SearchResult? searchResult;

  SearchResultInLoading.success(this.searchResult) : super.success(searchResult?.getParameterUniqueId);

  static SearchResultInLoading get getSearchResultInLoadingForSuccess => SearchResultInLoading.success(SearchResult.getSearchResultForSuccess);

  @nonVirtual
  SearchResult? get getParameterSearchResult => searchResult;

  String? get getOneParametersNamedForSearchBodyWidget => searchResult?.getParameterGithubUser?.getParameterAvatarUrl;
  String? get getTwoParametersNamedForSearchBodyWidget => searchResult?.getParameterFullName;
  String? get getThreeParametersNamedForSearchBodyWidget => searchResult?.getParameterHtmlUrl;
}