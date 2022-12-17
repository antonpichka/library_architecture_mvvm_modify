import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_github_search/model/githubUser/GithubUser.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class SearchResult
    extends BaseModel
{
  @protected
  String? fullName;
  @protected
  String? htmlUrl;
  @protected
  GithubUser? githubUser;

  SearchResult.success(this.fullName,this.htmlUrl,this.githubUser) : super.success(githubUser?.getParameterUniqueId);
  SearchResult.exception(super.exception) : super.exception();

  static SearchResult get getSearchResultForSuccess => SearchResult.success("","",GithubUser.getGithubUserForSuccess);
  static const constParameterFullName = "full_name";
  static const constParameterHtmlUrl = "html_url";
  static const constParameterGithubUser = "owner";

  String? get getOneParametersNamedForSearchBodyWidget => githubUser?.getOneParametersNamedForSearchBodyWidget;
  String? get getTwoParametersNamedForSearchBodyWidget => fullName;
  String? get getThreeParametersNamedForSearchBodyWidget => htmlUrl;
}