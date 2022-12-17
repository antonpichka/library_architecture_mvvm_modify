import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_github_search/model/githubUser/GithubUser.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class SearchResult
    extends BaseModel
{
  String? _fullName;
  String? _htmlUrl;
  GithubUser? _githubUser;

  SearchResult.success(this._fullName,this._htmlUrl,this._githubUser) : super.success(_githubUser?.getParameterUniqueId);
  SearchResult.exception(super.exception) : super.exception();

  static SearchResult get getSearchResultForSuccess => SearchResult.success("","",GithubUser.getGithubUserForSuccess);
  static const constParameterFullName = "full_name";
  static const constParameterHtmlUrl = "html_url";
  static const constParameterGithubUser = "owner";

  @protected
  @nonVirtual
  String? get getParameterFullName => _fullName;
  @protected
  @nonVirtual
  String? get getParameterHtmlUrl => _htmlUrl;
  @protected
  @nonVirtual
  GithubUser? get getParameterGithubUser => _githubUser;
  String? get getOneParametersNamedForSearchBodyWidget => _githubUser?.getOneParametersNamedForSearchBodyWidget;
  String? get getTwoParametersNamedForSearchBodyWidget => _fullName;
  String? get getThreeParametersNamedForSearchBodyWidget => _htmlUrl;

  @protected
  @nonVirtual
  set setParameterFullName(String fullName) => _fullName = fullName;
  @protected
  @nonVirtual
  set setParameterHtmlUrl(String htmlUrl) => _htmlUrl = htmlUrl;
  @protected
  @nonVirtual
  set setParameterGithubUser(GithubUser githubUser) => _githubUser = githubUser;
}