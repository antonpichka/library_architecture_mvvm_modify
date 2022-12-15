import 'package:library_arch_mvvm_modify_github_search/model/searchResult/ListSearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';

abstract class SearchResultQNamedServiceViewModel<T extends SearchResult,Y extends ListSearchResult<T>,DataSource extends Object>
    extends BaseModelQNamedServiceViewModel<T,Y,DataSource>
{
  SearchResultQNamedServiceViewModel.thereIsDataSource(super.dataSource, super.iCloneStreamModelForSuccess) : super.thereIsDataSource();
  SearchResultQNamedServiceViewModel.noDataSource(super.list,super.iCloneStreamModelForSuccess) : super.noDataSource();
}