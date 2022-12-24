import 'package:library_arch_mvvm_modify_github_search/model/githubUser/githubUserForNamed/GithubUserForMapTIP.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';

class SearchResultForMapTIP
    implements IModelForNamedTIP<SearchResult,Map<String,dynamic>>
{
  @override
  SearchResult? getModelForNamedTIP(Map<String, dynamic>? parameter) {
    return SearchResult.success(
        parameter![SearchResult.constParameterFullName] as String,
        parameter[SearchResult.constParameterHtmlUrl] as String,
        GithubUserForMapTIP().getModelForNamedTIP(parameter[SearchResult.constParameterGithubUser] as Map<String,dynamic>));
  }
}