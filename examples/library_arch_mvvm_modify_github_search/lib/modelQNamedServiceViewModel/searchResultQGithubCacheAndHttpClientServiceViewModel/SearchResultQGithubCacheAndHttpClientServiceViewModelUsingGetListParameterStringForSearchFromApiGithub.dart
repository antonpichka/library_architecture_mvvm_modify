import 'dart:convert';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/ListSearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQNamedServiceViewModel/namedService/GithubCacheAndHttpClientService.dart';
import 'package:library_arch_mvvm_modify_github_search/utility/Utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_list_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_list_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/string_type_parameter.dart';
import 'package:meta/meta.dart';

class SearchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub<T extends SearchResult,Y extends ListSearchResult<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
    implements GetListModelFromNamedServiceParameterNamedDataSource<Y,StringTypeParameter>
{
  @protected
  final githubCacheAndHttpClientService = GithubCacheAndHttpClientService();
  @protected
  final IListModelForNamedTIP<Y,Map<String,dynamic>> iListSearchResultForMapTIP;
  @protected
  final IListModelForNamedTIP<Y,NetworkException> iListSearchResultForNetworkExceptionTIP;
  @protected
  final IListModelForNamedTIP<Y,LocalException> iListSearchResultForLocalExceptionTIP;
  @protected
  final IListModelForNamedTIP<Y,Object> iListSearchResultForObjectTIP;
  @protected
  final String baseUrl;

  SearchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub(
      this.iListSearchResultForMapTIP,
      this.iListSearchResultForNetworkExceptionTIP,
      this.iListSearchResultForLocalExceptionTIP,
      this.iListSearchResultForObjectTIP,
      [this.baseUrl = constUrlApiGithubComSearchRepositories]);

  Future<Y?> getListSearchResultFromGithubCacheAndHttpClientServiceParameterString(StringTypeParameter stringTypeParameter) {
    return getListModelFromNamedServiceParameterNamed<StringTypeParameter>(stringTypeParameter);
  }

  @protected
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<Y?> getListModelFromNamedServiceParameterNamedDS(StringTypeParameter? parameter)
  async {
    try {
      final cachedResult = iListSearchResultForObjectTIP
          .getListModelForNamedTIP(githubCacheAndHttpClientService.getGithubCacheSingleton?.getGithubCache?.get(parameter!.parameter));
      if(cachedResult != null) {
        return cachedResult;
      }
      final responseHttpClient = await githubCacheAndHttpClientService
          .getHttpClientSingleton
          ?.getHttpClient
          ?.get(Uri.parse('$baseUrl${parameter!.parameter}'));
      if (responseHttpClient!.statusCode != 200) {
        throw NetworkException.fromStatusCode(this,responseHttpClient.statusCode);
      }
      final resultJsonDecode = json.decode(responseHttpClient.body) as Map<String, dynamic>;
      final listSearchResult = iListSearchResultForMapTIP
          .getListModelForNamedTIP(resultJsonDecode);
      githubCacheAndHttpClientService
          .getGithubCacheSingleton
          ?.getGithubCache
          ?.set<Y>(parameter!.parameter, listSearchResult!);
      return listSearchResult;
    } on NetworkException catch(e) {
      return iListSearchResultForNetworkExceptionTIP.getListModelForNamedTIP(e);
    } catch(e) {
      return iListSearchResultForLocalExceptionTIP.getListModelForNamedTIP(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}