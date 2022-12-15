import 'dart:convert';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/ListSearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQNamedServiceDataSource/namedService/GithubCacheAndHttpClientService.dart';
import 'package:library_arch_mvvm_modify_github_search/utility/Utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_list_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_list_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/string_type_parameter.dart';

class SearchResultQGithubCacheAndHttpClientServiceDataSourceUsingGetListParameterStringForSearchFromApiGithub<T extends SearchResult,Y extends ListSearchResult<T>>
    implements GetListModelFromNamedServiceParameterNamedDataSource<Y,StringTypeParameter>
{
  final String baseUrl;
  final _githubCacheAndHttpClientService = GithubCacheAndHttpClientService();
  final IListModelForNamedTIP<Y,Map<String,dynamic>> _iListSearchResultForMapTIP;
  final IListModelForNamedTIP<Y,NetworkException> _iListSearchResultForNetworkExceptionTIP;
  final IListModelForNamedTIP<Y,LocalException> _iListSearchResultForLocalExceptionTIP;

  SearchResultQGithubCacheAndHttpClientServiceDataSourceUsingGetListParameterStringForSearchFromApiGithub(
      this._iListSearchResultForMapTIP,
      this._iListSearchResultForNetworkExceptionTIP,
      this._iListSearchResultForLocalExceptionTIP,
      {this.baseUrl = constUrlApiGithubComSearchRepositories});

  @override
  Future<Y?> getListModelFromNamedServiceParameterNamed(StringTypeParameter? parameter)
  async {
    try {
      final cachedResult = _githubCacheAndHttpClientService
          .getGithubCacheSingleton
          ?.getGithubCache
          ?.get<Y>(parameter!.parameter);
      if(cachedResult != null) {
        return cachedResult;
      }
      final responseHttpClient = await _githubCacheAndHttpClientService
          .getHttpClientSingleton
          ?.getHttpClient
          ?.get(Uri.parse('$baseUrl${parameter!.parameter}'));
      if (responseHttpClient!.statusCode != 200) {
        throw NetworkException.fromStatusCode(this,responseHttpClient.statusCode);
      }
      final resultJsonDecode = json.decode(responseHttpClient.body) as Map<String, dynamic>;
      final listSearchResult = _iListSearchResultForMapTIP.getListModelForNamedTIP(resultJsonDecode);
      _githubCacheAndHttpClientService
          .getGithubCacheSingleton
          ?.getGithubCache
          ?.set<Y>(parameter!.parameter, listSearchResult);
      return listSearchResult;
    } on NetworkException catch(e) {
      return _iListSearchResultForNetworkExceptionTIP.getListModelForNamedTIP(e);
    } catch(e) {
      return _iListSearchResultForLocalExceptionTIP.getListModelForNamedTIP(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}