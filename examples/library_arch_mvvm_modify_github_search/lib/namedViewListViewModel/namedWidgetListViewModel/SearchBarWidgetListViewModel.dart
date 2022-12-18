import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_github_search/model/customTimer/CustomTimer.dart';
import 'package:library_arch_mvvm_modify_github_search/model/customTimer/ListCustomTimer.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/ListSearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/ListSearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/SearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQNamedServiceViewModel/boolQNoServiceViewModel/BoolQNoServiceViewModelUsingGetNPForAntiSpam.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQNamedServiceViewModel/customTimerQNoServiceViewModel/CustomTimerQNoServiceViewModelUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQNamedServiceViewModel/searchResultInLoadingQNoServiceViewModel/SearchResultInLoadingQNoServiceViewModelUsingGetListNP.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQNamedServiceViewModel/searchResultQGithubCacheAndHttpClientServiceViewModel/SearchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQNamedServiceViewModel/stringsQNoServiceViewModel/StringsQNoServiceViewModelUsingGetNPForSaveLettersSearch.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/string_type_parameter.dart';

class SearchBarWidgetListViewModel {
  @protected
  final SearchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub<SearchResult,ListSearchResult<SearchResult>> searchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub;
  @protected
  final BoolQNoServiceViewModelUsingGetNPForAntiSpam<Bool,ListBool<Bool>> boolQNoServiceViewModelUsingGetNPForAntiSpam;
  @protected
  final StringsQNoServiceViewModelUsingGetNPForSaveLettersSearch<Strings,ListStrings<Strings>> stringsQNoServiceViewModelUsingGetNPForSaveLettersSearch;
  @protected
  final SearchResultInLoadingQNoServiceViewModelUsingGetListNP<SearchResultInLoading,ListSearchResultInLoading<SearchResultInLoading>> searchResultInLoadingQNoServiceViewModelUsingGetListNP;
  @protected
  final CustomTimerQNoServiceViewModelUsingGetNP<CustomTimer,ListCustomTimer<CustomTimer>> customTimerQNoServiceViewModelUsingGetNP;

  SearchBarWidgetListViewModel(this.searchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub, this.boolQNoServiceViewModelUsingGetNPForAntiSpam, this.stringsQNoServiceViewModelUsingGetNPForSaveLettersSearch, this.searchResultInLoadingQNoServiceViewModelUsingGetListNP, this.customTimerQNoServiceViewModelUsingGetNP);

  Future<void> getListSearchResultFromGithubCacheAndHttpClientServiceParameterStringAndSetListSearchResultAndInGeneralOneTask(String search)
  async {
    stringsQNoServiceViewModelUsingGetNPForSaveLettersSearch
        .getStringsUsingGetNPForSaveLettersSearch
        ?.setParameterField = search;
    if(stringsQNoServiceViewModelUsingGetNPForSaveLettersSearch
        .getStringsUsingGetNPForSaveLettersSearch
        !.getParameterField
        .isEmpty)
    {
      customTimerQNoServiceViewModelUsingGetNP
          .getCustomTimerUsingGetNP
          ?.oneParametersNamedForSearchBarWidget();
      boolQNoServiceViewModelUsingGetNPForAntiSpam
          .getBoolUsingGetNPForAntiSpam
          ?.setParameterIsField = false;
      searchResultInLoadingQNoServiceViewModelUsingGetListNP
          .getListSearchResultInLoadingUsingGetListNP
          ?.setThreeParametersNamedForSearchBarWidget();
      searchResultInLoadingQNoServiceViewModelUsingGetListNP
          .notifyStreamListSearchResultInLoadingUsingGetListNP();
      return;
    }
    if(boolQNoServiceViewModelUsingGetNPForAntiSpam
        .getBoolUsingGetNPForAntiSpam
        !.getParameterIsField)
    {
      return;
    }
    boolQNoServiceViewModelUsingGetNPForAntiSpam
        .getBoolUsingGetNPForAntiSpam
        ?.setParameterIsField = true;
    searchResultInLoadingQNoServiceViewModelUsingGetListNP
        .getListSearchResultInLoadingUsingGetListNP
        ?.setOneParametersNamedForSearchBarWidget();
    searchResultInLoadingQNoServiceViewModelUsingGetListNP
        .notifyStreamListSearchResultInLoadingUsingGetListNP();
    customTimerQNoServiceViewModelUsingGetNP
        .getCustomTimerUsingGetNP
        ?.setOneParametersNamedForSearchBarWidget =
        () async {
          boolQNoServiceViewModelUsingGetNPForAntiSpam
              .getBoolUsingGetNPForAntiSpam
              ?.setParameterIsField = false;
          // 1
          await searchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub
              .getListSearchResultFromGithubCacheAndHttpClientServiceParameterStringAndSetListSearchResult(StringTypeParameter.success(stringsQNoServiceViewModelUsingGetNPForSaveLettersSearch.getStringsUsingGetNPForSaveLettersSearch!.getParameterField));
          searchResultInLoadingQNoServiceViewModelUsingGetListNP
              .getListSearchResultInLoadingUsingGetListNP
              ?.setTwoParametersNamedForSearchBarWidget = searchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub.getListSearchResultUsingGetListParameterStringForSearchFromApiGithub!;
          searchResultInLoadingQNoServiceViewModelUsingGetListNP
              .notifyStreamListSearchResultInLoadingUsingGetListNP();
        };
  }
}