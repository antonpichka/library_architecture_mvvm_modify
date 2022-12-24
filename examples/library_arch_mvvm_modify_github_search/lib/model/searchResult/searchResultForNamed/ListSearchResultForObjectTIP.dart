import 'package:library_arch_mvvm_modify_github_search/model/searchResult/ListSearchResult.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_list_model_for_named_tip.dart';

class ListSearchResultForObjectTIP
    implements IListModelForNamedTIP<ListSearchResult,Object>
{
  @override
  ListSearchResult? getListModelForNamedTIP(Object? parameter) {
    if(parameter == null) {
      return null;
    }
    final listSearchResult = parameter as ListSearchResult;
    return ListSearchResult.success(listSearchResult.getParameterList);
  }
}