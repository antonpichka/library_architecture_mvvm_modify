import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

class ListSearchResult<T extends SearchResult>
    extends BaseListModel<T>
{
  ListSearchResult.success(super.list) : super.success();
  ListSearchResult.exception(super.exception) : super.exception();

  static ListSearchResult get getListSearchResultForSuccess => ListSearchResult.success([]);
  static const constParameterListModel = "items";
}