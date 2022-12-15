import 'package:library_arch_mvvm_modify_github_search/model/searchResult/ListSearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQNamedServiceDataSource/searchResultQGithubCacheAndHttpClientServiceDataSource/SearchResultQGithubCacheAndHttpClientServiceDataSourceUsingGetListParameterStringForSearchFromApiGithub.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQNamedServiceViewModel/SearchResultQNamedServiceViewModel.dart';
import 'package:library_arch_mvvm_modify_github_search/utility/Utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_list_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_for_i_stream_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/string_type_parameter.dart';

class SearchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub<T extends SearchResult,Y extends ListSearchResult<T>>
    extends SearchResultQNamedServiceViewModel<T,Y,SearchResultQGithubCacheAndHttpClientServiceDataSourceUsingGetListParameterStringForSearchFromApiGithub<T,Y>>
{
  SearchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub(ICloneStreamModelForSuccess<T,Y> iCloneStreamModelForSuccess,IListModelForNamedTIP<Y,Map<String,dynamic>> iListSearchResultForMapTIP,IListModelForNamedTIP<Y,NetworkException> iListSearchResultForNetworkExceptionTIP,IListModelForNamedTIP<Y,LocalException> iListSearchResultForLocalExceptionTIP,{String baseUrl = constUrlApiGithubComSearchRepositories}) : super.thereIsDataSource(SearchResultQGithubCacheAndHttpClientServiceDataSourceUsingGetListParameterStringForSearchFromApiGithub(iListSearchResultForMapTIP,iListSearchResultForNetworkExceptionTIP,iListSearchResultForLocalExceptionTIP,baseUrl: baseUrl),iCloneStreamModelForSuccess);

  @override
  Object thisClass() {
    return this;
  }

  Future<Y?> getListSearchResultFromGithubCacheAndHttpClientServiceParameterStringAndSetListSearchResult(StringTypeParameter stringTypeParameter) {
    return getListModelFromNamedServiceParameterNamedAndSetListModel<StringTypeParameter>(stringTypeParameter);
  }

  Stream<Y>? get getStreamListSearchResultUsingGetListParameterStringForSearchFromApiGithub {
    return getStreamListModel(EnumForIStreamModelVM.getListParameterNamed);
  }

  Y? get getListSearchResultUsingGetListParameterStringForSearchFromApiGithub {
    return getListModel(EnumForIStreamModelVM.getListParameterNamed);
  }

  void notifyStreamListSearchResultUsingGetListParameterStringForSearchFromApiGithub() {
    notifyStreamListModel(EnumForIStreamModelVM.getListParameterNamed);
  }
}