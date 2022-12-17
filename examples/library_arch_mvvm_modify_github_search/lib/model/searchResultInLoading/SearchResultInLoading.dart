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

  String? get getOneParametersNamedForSearchBodyWidget => searchResult?.getOneParametersNamedForSearchBodyWidget;
  String? get getTwoParametersNamedForSearchBodyWidget => searchResult?.getTwoParametersNamedForSearchBodyWidget;
  String? get getThreeParametersNamedForSearchBodyWidget => searchResult?.getThreeParametersNamedForSearchBodyWidget;
}