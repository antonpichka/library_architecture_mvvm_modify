import 'package:library_arch_mvvm_modify_github_search/model/searchResult/ListSearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_list_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';

class ListSearchResultForNetworkExceptionTIP
    implements IListModelForNamedTIP<ListSearchResult<SearchResult>,NetworkException>
{
  @override
  ListSearchResult<SearchResult> getListModelForNamedTIP(NetworkException parameter) {
    return ListSearchResult.exception(parameter);
  }
}