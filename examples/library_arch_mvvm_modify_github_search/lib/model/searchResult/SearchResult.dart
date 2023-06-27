import 'package:library_arch_mvvm_modify_github_search/model/githubUser/GithubUser.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class SearchResult extends BaseModel {
  static const String constParameterFullName = "full_name";
  static const String constParameterHtmlUrl = "html_url";
  static const String constParameterGithubUser = "owner";

  String? fullName;
  String? htmlUrl;
  GithubUser? githubUser;

  SearchResult.success(this.fullName, this.htmlUrl, this.githubUser)
      : super.success(githubUser?.uniqueId);
  SearchResult.exception(super.exception) : super.exception();

  static SearchResult get getSearchResultForSuccess =>
      SearchResult.success("", "", GithubUser.getGithubUserForSuccess);
}
