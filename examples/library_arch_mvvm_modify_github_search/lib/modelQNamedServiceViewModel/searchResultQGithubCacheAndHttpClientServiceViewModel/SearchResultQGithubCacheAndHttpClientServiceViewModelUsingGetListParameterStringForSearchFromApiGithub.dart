import 'dart:convert';
import 'package:library_arch_mvvm_modify_github_search/model/githubUser/GithubUser.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/ListSearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQNamedServiceViewModel/namedService/GithubCacheService.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQNamedServiceViewModel/namedService/HttpClientService.dart';
import 'package:library_arch_mvvm_modify_github_search/utility/Utility.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/get_list_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:meta/meta.dart';

class SearchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub<T extends SearchResult,Y extends ListSearchResult<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
    implements GetListModelFromNamedServiceParameterNamedDataSource<Y,String>
{
  @protected
  final githubCacheService = GithubCacheService();
  @protected
  final httpClientService = HttpClientService();
  @protected
  final String baseUrl;

  SearchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub(
      [this.baseUrl = constUrlApiGithubComSearchRepositories]);

  Future<Y?> getListSearchResultFromGithubCacheAndHttpClientServiceParameterString(String parameter) {
    return getListModelFromNamedServiceParameterNamed<String>(parameter);
  }

  @nonVirtual
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<Y?> getListModelFromNamedServiceParameterNamedDS(String? parameter)
  async {
    try {
      final object = githubCacheService
          .getGithubCache
          ?.get(parameter);
      final listSearchResultFromObjectASameGithubCache = getListSearchResultFromObject(object);
      if(listSearchResultFromObjectASameGithubCache != null) {
        return listSearchResultFromObjectASameGithubCache;
      }
      final response = await httpClientService
          .getHttpClient
          ?.get(Uri.parse('$baseUrl$parameter'));
      if (response!.statusCode != 200) {
        throw NetworkException.fromStatusCode(this,response.statusCode);
      }
      final mapFromJsonDecode = json.decode(response.body) as Map<String, dynamic>;
      final listSearchResultFromMapASameHttpClient = getListSearchResultFromMap(mapFromJsonDecode);
      githubCacheService
          .getGithubCache
          ?.set(parameter, listSearchResultFromMapASameHttpClient!);
      return listSearchResultFromMapASameHttpClient;
    } on NetworkException catch(e) {
      return getListSearchResultFromBaseException(e);
    } catch(e) {
      return getListSearchResultFromBaseException(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @protected
  Y? getListSearchResultFromObject(Object? object) {
    if(object == null) {
      return null;
    }
    final listSearchResult = object as Y?;
    return ListSearchResult.success(listSearchResult?.listModel) as Y?;
  }

  @protected
  Y? getListSearchResultFromMap(Map<String, dynamic>? map) {
    final listSearchResult = (map![ListSearchResult.constParameterListModel] as List<dynamic>)
        .map((dynamic item) {
          final mapSearchResult = item as Map<String, dynamic>;
          return SearchResult.success(
              mapSearchResult[SearchResult.constParameterFullName] as String,
              mapSearchResult[SearchResult.constParameterHtmlUrl] as String,
              GithubUser.success(
                  mapSearchResult[SearchResult.constParameterGithubUser][GithubUser.constParameterLogin] as String,
                  mapSearchResult[SearchResult.constParameterGithubUser][GithubUser.constParameterAvatarUrl] as String));
        }).toList();
    return ListSearchResult.success(listSearchResult) as Y?;
  }

  @protected
  Y? getListSearchResultFromBaseException(BaseException? baseException) {
    return ListSearchResult.exception(baseException!) as Y?;
  }
}