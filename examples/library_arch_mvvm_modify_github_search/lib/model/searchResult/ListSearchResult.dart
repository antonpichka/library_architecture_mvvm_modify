import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

base class ListSearchResult<T extends SearchResult> extends BaseListModel<T> {
  static const String constParameterListModel = "items";

  ListSearchResult.success(super.listModel) : super.success();
  ListSearchResult.exception(super.exception) : super.exception();

  static ListSearchResult get getListSearchResultForSuccess =>
      ListSearchResult.success([]);
}
