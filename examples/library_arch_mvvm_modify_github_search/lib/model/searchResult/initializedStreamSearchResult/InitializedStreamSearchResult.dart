import 'package:library_arch_mvvm_modify_github_search/model/searchResult/ListSearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

final class InitializedStreamSearchResult
    implements IInitializedStreamModel<SearchResult, ListSearchResult> {
  @override
  IStreamModel<SearchResult, ListSearchResult>? initializedStreamModel() {
    return DefaultStreamModel<SearchResult, ListSearchResult>(
        SearchResult.getSearchResultForSuccess,
        ListSearchResult.getListSearchResultForSuccess);
  }
}
