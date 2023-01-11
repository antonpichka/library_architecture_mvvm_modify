import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/ListSearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/SearchResultInLoading.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class InitializedStreamSearchResultInLoading
    implements IInitializedStreamModel<SearchResultInLoading,ListSearchResultInLoading>
{
  @override
  IStreamModel<SearchResultInLoading, ListSearchResultInLoading>? initializedStreamModel() {
    return DefaultStreamModel<SearchResultInLoading,ListSearchResultInLoading>(SearchResultInLoading.getSearchResultInLoadingForSuccess,ListSearchResultInLoading.getListSearchResultInLoadingForSuccess);
  }

}