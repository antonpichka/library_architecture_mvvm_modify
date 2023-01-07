import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/ListSearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/SearchResultInLoading.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_there_is_state_view_model.dart';

abstract class SearchResultInLoadingQNamedServiceViewModel<T extends SearchResultInLoading,Y extends ListSearchResultInLoading<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  SearchResultInLoadingQNamedServiceViewModel.thereIsDataSource(super.iCloneStreamModelForSuccess) : super.thereIsDataSource();
  SearchResultInLoadingQNamedServiceViewModel.noDataSource(super.list,super.iCloneStreamModelForSuccess) : super.noDataSource();
}