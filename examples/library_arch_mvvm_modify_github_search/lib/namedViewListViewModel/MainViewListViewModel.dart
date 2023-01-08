import 'package:library_arch_mvvm_modify_github_search/model/customTimer/CustomTimer.dart';
import 'package:library_arch_mvvm_modify_github_search/model/customTimer/ListCustomTimer.dart';
import 'package:library_arch_mvvm_modify_github_search/model/customTimer/initializedStreamCustomTimer/InitializedStreamCustomTimer.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/ListSearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/searchResultForNamed/ListSearchResultForLocalExceptionTIP.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/searchResultForNamed/ListSearchResultForMapTIP.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/searchResultForNamed/ListSearchResultForNetworkExceptionTIP.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/searchResultForNamed/ListSearchResultForObjectTIP.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/ListSearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/SearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/initializedStreamSearchResultInLoading/InitializedStreamSearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQNamedServiceViewModel/searchResultQGithubCacheAndHttpClientServiceViewModel/SearchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQThereIsStateViewModel/boolQThereIsStateViewModel/BoolQThereIsStateViewModelForAntiSpam.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQThereIsStateViewModel/customTimerQThereIsStateViewModel/CustomTimerQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQThereIsStateViewModel/searchResultInLoadingQThereIsStateViewModel/SearchResultInLoadingQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQThereIsStateViewModel/stringsQThereIsStateViewModel/StringsQThereIsStateViewModelForSaveLettersSearch.dart';
import 'package:library_arch_mvvm_modify_github_search/namedViewListViewModel/namedWidgetListViewModel/SearchBarWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_github_search/namedViewListViewModel/namedWidgetListViewModel/SearchBodyWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/initialized_stream_bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/initialized_stream_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class MainViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQThereIsStateViewModel
  final _boolQThereIsStateViewModelForAntiSpam =
  BoolQThereIsStateViewModelForAntiSpam<Bool,ListBool<Bool>>(InitializedStreamBool());
  final _stringsQThereIsStateViewModelForSaveLettersSearch =
  StringsQThereIsStateViewModelForSaveLettersSearch<Strings,ListStrings<Strings>>(InitializedStreamStrings());
  final _searchResultInLoadingQThereIsStateViewModel =
  SearchResultInLoadingQThereIsStateViewModel<SearchResultInLoading,ListSearchResultInLoading<SearchResultInLoading>>(InitializedStreamSearchResultInLoading());
  final _customTimerQThereIsStateViewModel =
  CustomTimerQThereIsStateViewModel<CustomTimer,ListCustomTimer<CustomTimer>>(InitializedStreamCustomTimer());

  // ModelQNamedServiceViewModel
  final _searchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub =
  SearchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub<SearchResult,ListSearchResult<SearchResult>>(
      ListSearchResultForMapTIP(),
      ListSearchResultForNetworkExceptionTIP(),
      ListSearchResultForLocalExceptionTIP(),
      ListSearchResultForObjectTIP());

  // NamedWidgetListViewModel
  late final SearchBarWidgetListViewModel searchBarWidgetListViewModel;
  late final SearchBodyWidgetListViewModel searchBodyWidgetListViewModel;

  MainViewListViewModel() {
    searchBarWidgetListViewModel = SearchBarWidgetListViewModel(
        _searchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub,
        _boolQThereIsStateViewModelForAntiSpam,
        _stringsQThereIsStateViewModelForSaveLettersSearch,
        _searchResultInLoadingQThereIsStateViewModel,
        _customTimerQThereIsStateViewModel);
    searchBodyWidgetListViewModel = SearchBodyWidgetListViewModel(
        _searchResultInLoadingQThereIsStateViewModel);
  }

  @override
  void dispose() {
    _boolQThereIsStateViewModelForAntiSpam.dispose();
    _stringsQThereIsStateViewModelForSaveLettersSearch.dispose();
    _searchResultInLoadingQThereIsStateViewModel.dispose();
    _customTimerQThereIsStateViewModel.dispose();
  }
}