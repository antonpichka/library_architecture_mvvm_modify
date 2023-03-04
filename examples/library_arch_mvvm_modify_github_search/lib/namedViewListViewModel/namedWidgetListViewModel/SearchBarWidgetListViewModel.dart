import 'dart:async';
import 'package:library_arch_mvvm_modify_github_search/modelQNamedServiceViewModel/searchResultQGithubCacheAndHttpClientServiceViewModel/SearchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQThereIsStateViewModel/customTimerQThereIsStateViewModel/CustomTimerQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQThereIsStateViewModel/searchResultInLoadingQThereIsStateViewModel/SearchResultInLoadingQThereIsStateViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/bool_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/strings_q_there_is_state_view_model.dart';
import 'package:meta/meta.dart';

class SearchBarWidgetListViewModel {
  @protected
  final SearchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub
      searchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub;
  @protected
  final BoolQThereIsStateViewModel boolQThereIsStateViewModelForAntiSpam;
  @protected
  final StringsQThereIsStateViewModel
      stringsQThereIsStateViewModelForSaveLettersSearch;
  @protected
  final SearchResultInLoadingQThereIsStateViewModel
      searchResultInLoadingQThereIsStateViewModel;
  @protected
  final CustomTimerQThereIsStateViewModel customTimerQThereIsStateViewModel;

  SearchBarWidgetListViewModel(
      this.searchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub,
      this.boolQThereIsStateViewModelForAntiSpam,
      this.stringsQThereIsStateViewModelForSaveLettersSearch,
      this.searchResultInLoadingQThereIsStateViewModel,
      this.customTimerQThereIsStateViewModel);

  Future<void>
      getListSearchResultFromGithubCacheAndHttpClientServiceParameterStringAndInGeneralOneTask(
          String search) async {
    stringsQThereIsStateViewModelForSaveLettersSearch.getStrings?.field =
        search;
    if (stringsQThereIsStateViewModelForSaveLettersSearch
        .getStrings!.field.isEmpty) {
      customTimerQThereIsStateViewModel.getCustomTimer
          ?.setTwoParametersNamedForSearchBarWidget();
      boolQThereIsStateViewModelForAntiSpam.getBool?.isField = false;
      searchResultInLoadingQThereIsStateViewModel.getListSearchResultInLoading
          ?.setThreeParametersNamedForSearchBarWidget();
      searchResultInLoadingQThereIsStateViewModel
          .notifyStreamListSearchResultInLoading();
      return;
    }
    if (boolQThereIsStateViewModelForAntiSpam.getBool!.isField) {
      return;
    }
    boolQThereIsStateViewModelForAntiSpam.getBool?.isField = true;
    searchResultInLoadingQThereIsStateViewModel.getListSearchResultInLoading
        ?.setOneParametersNamedForSearchBarWidget();
    searchResultInLoadingQThereIsStateViewModel
        .notifyStreamListSearchResultInLoading();
    customTimerQThereIsStateViewModel
        .getCustomTimer?.setOneParametersNamedForSearchBarWidget = () async {
      boolQThereIsStateViewModelForAntiSpam.getBool?.isField = false;
      // 1
      final listSearchResult =
          await searchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub
              .getListSearchResultFromGithubCacheAndHttpClientServiceParameterString(
                  stringsQThereIsStateViewModelForSaveLettersSearch
                      .getStrings!.field);
      searchResultInLoadingQThereIsStateViewModel.getListSearchResultInLoading
          ?.setTwoParametersNamedForSearchBarWidget = listSearchResult!;
      searchResultInLoadingQThereIsStateViewModel
          .notifyStreamListSearchResultInLoading();
    };
  }
}
