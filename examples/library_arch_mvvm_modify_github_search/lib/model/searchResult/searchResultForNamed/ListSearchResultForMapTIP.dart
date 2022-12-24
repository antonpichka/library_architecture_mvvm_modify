import 'package:library_arch_mvvm_modify_github_search/model/searchResult/ListSearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/searchResultForNamed/SearchResultForMapTIP.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_list_model_for_named_tip.dart';

class ListSearchResultForMapTIP
    implements IListModelForNamedTIP<ListSearchResult<SearchResult>,Map<String,dynamic>>
{
  @override
  ListSearchResult<SearchResult>? getListModelForNamedTIP(Map<String, dynamic>? parameter) {
    final list = (parameter![ListSearchResult.constParameterList] as List<dynamic>)
        .map((dynamic item) => SearchResultForMapTIP().getModelForNamedTIP(item as Map<String, dynamic>)!)
        .toList();
    return ListSearchResult.success(list);
  }
}