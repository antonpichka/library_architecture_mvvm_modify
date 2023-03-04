import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class SearchResultInLoading extends BaseModel {
  SearchResult? searchResult;

  SearchResultInLoading.success(this.searchResult)
      : super.success(searchResult?.uniqueId);

  static SearchResultInLoading get getSearchResultInLoadingForSuccess =>
      SearchResultInLoading.success(SearchResult.getSearchResultForSuccess);

  String? get getOneParametersNamedForSearchBodyWidget =>
      searchResult?.githubUser?.avatarUrl;
  String? get getTwoParametersNamedForSearchBodyWidget =>
      searchResult?.fullName;
  String? get getThreeParametersNamedForSearchBodyWidget =>
      searchResult?.htmlUrl;
}
