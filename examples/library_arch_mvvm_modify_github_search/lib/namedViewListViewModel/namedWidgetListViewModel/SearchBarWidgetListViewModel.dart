import 'dart:async';
import 'package:library_arch_mvvm_modify_github_search/model/customTimer/CustomTimer.dart';
import 'package:library_arch_mvvm_modify_github_search/model/customTimer/ListCustomTimer.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/ListSearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/ListSearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/SearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQNamedServiceViewModel/searchResultQGithubCacheAndHttpClientServiceViewModel/SearchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQThereIsStateViewModel/boolQThereIsStateViewModel/BoolQThereIsStateViewModelForAntiSpam.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQThereIsStateViewModel/customTimerQThereIsStateViewModel/CustomTimerQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQThereIsStateViewModel/searchResultInLoadingQThereIsStateViewModel/SearchResultInLoadingQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQThereIsStateViewModel/stringsQThereIsStateViewModel/StringsQThereIsStateViewModelForSaveLettersSearch.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/string_type_parameter.dart';
import 'package:meta/meta.dart';

class SearchBarWidgetListViewModel {
  @protected
  final SearchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub<SearchResult,ListSearchResult<SearchResult>> searchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub;
  @protected
  final BoolQThereIsStateViewModelForAntiSpam<Bool,ListBool<Bool>> boolQThereIsStateViewModelForAntiSpam;
  @protected
  final StringsQThereIsStateViewModelForSaveLettersSearch<Strings,ListStrings<Strings>> stringsQThereIsStateViewModelForSaveLettersSearch;
  @protected
  final SearchResultInLoadingQThereIsStateViewModel<SearchResultInLoading,ListSearchResultInLoading<SearchResultInLoading>> searchResultInLoadingQThereIsStateViewModel;
  @protected
  final CustomTimerQThereIsStateViewModel<CustomTimer,ListCustomTimer<CustomTimer>> customTimerQThereIsStateViewModel;

  SearchBarWidgetListViewModel(
      this.searchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub,
      this.boolQThereIsStateViewModelForAntiSpam,
      this.stringsQThereIsStateViewModelForSaveLettersSearch,
      this.searchResultInLoadingQThereIsStateViewModel,
      this.customTimerQThereIsStateViewModel);

  Future<void> getListSearchResultFromGithubCacheAndHttpClientServiceParameterStringAndInGeneralOneTask(
      String search)
  async {
    stringsQThereIsStateViewModelForSaveLettersSearch
        .getStringsForSaveLettersSearch
        ?.field = search;
    if(stringsQThereIsStateViewModelForSaveLettersSearch
        .getStringsForSaveLettersSearch
        !.field
        .isEmpty)
    {
      customTimerQThereIsStateViewModel
          .getCustomTimer
          ?.oneParametersNamedForSearchBarWidget();
      boolQThereIsStateViewModelForAntiSpam
          .getBoolForAntiSpam
          ?.isField = false;
      searchResultInLoadingQThereIsStateViewModel
          .getListSearchResultInLoading
          ?.setThreeParametersNamedForSearchBarWidget();
      searchResultInLoadingQThereIsStateViewModel
          .notifyStreamListSearchResultInLoading();
      return;
    }
    if(boolQThereIsStateViewModelForAntiSpam
        .getBoolForAntiSpam
        !.isField)
    {
      return;
    }
    boolQThereIsStateViewModelForAntiSpam
        .getBoolForAntiSpam
        ?.isField = true;
    searchResultInLoadingQThereIsStateViewModel
        .getListSearchResultInLoading
        ?.setOneParametersNamedForSearchBarWidget();
    searchResultInLoadingQThereIsStateViewModel
        .notifyStreamListSearchResultInLoading();
    customTimerQThereIsStateViewModel
        .getCustomTimer
        ?.setOneParametersNamedForSearchBarWidget =
        () async {
          boolQThereIsStateViewModelForAntiSpam
              .getBoolForAntiSpam
              ?.isField= false;
          // 1
          final listSearchResult = await searchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub
              .getListSearchResultFromGithubCacheAndHttpClientServiceParameterString(StringTypeParameter.success(stringsQThereIsStateViewModelForSaveLettersSearch.getStringsForSaveLettersSearch!.field));
          searchResultInLoadingQThereIsStateViewModel
              .getListSearchResultInLoading
              ?.setTwoParametersNamedForSearchBarWidget = listSearchResult!;
          searchResultInLoadingQThereIsStateViewModel
              .notifyStreamListSearchResultInLoading();
        };
  }
}