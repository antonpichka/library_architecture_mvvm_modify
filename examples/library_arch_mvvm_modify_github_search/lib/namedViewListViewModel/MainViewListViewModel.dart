import 'package:library_arch_mvvm_modify_github_search/model/customTimer/initializedStreamCustomTimer/InitializedStreamCustomTimer.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/initializedStreamSearchResultInLoading/InitializedStreamSearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQNamedServiceViewModel/searchResultQGithubCacheAndHttpClientServiceViewModel/SearchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQThereIsStateViewModel/customTimerQThereIsStateViewModel/CustomTimerQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQThereIsStateViewModel/searchResultInLoadingQThereIsStateViewModel/SearchResultInLoadingQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_github_search/namedViewListViewModel/namedWidgetListViewModel/SearchBarWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_github_search/namedViewListViewModel/namedWidgetListViewModel/SearchBodyWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/initialized_stream_bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/initialized_stream_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/bool_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/strings_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

final class MainViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQThereIsStateViewModel
  final _boolQThereIsStateViewModelForAntiSpam =
      BoolQThereIsStateViewModel(InitializedStreamBool());
  final _stringsQThereIsStateViewModelForSaveLettersSearch =
      StringsQThereIsStateViewModel(InitializedStreamStrings());
  final _searchResultInLoadingQThereIsStateViewModel =
      SearchResultInLoadingQThereIsStateViewModel(
          InitializedStreamSearchResultInLoading());
  final _customTimerQThereIsStateViewModel =
      CustomTimerQThereIsStateViewModel(InitializedStreamCustomTimer());

  // ModelQNamedServiceViewModel
  final _searchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub =
      SearchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub();

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
