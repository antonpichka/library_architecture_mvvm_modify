import 'package:library_arch_mvvm_modify_github_search/model/searchResult/ListSearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class CloneStreamSearchResultForSuccess
    implements IStreamModelForSuccess<SearchResult,ListSearchResult<SearchResult>>
{
  @override
  IStreamModel<SearchResult, ListSearchResult<SearchResult>>? streamModelForSuccess() {
    return DefaultStreamModel<SearchResult,ListSearchResult>(SearchResult.getSearchResultForSuccess,ListSearchResult.success([]));
  }
}