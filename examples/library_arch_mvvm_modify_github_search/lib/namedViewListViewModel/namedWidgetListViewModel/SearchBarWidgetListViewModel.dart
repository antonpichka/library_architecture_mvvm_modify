import 'dart:async';
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
  final SearchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub<SearchResult,ListSearchResult<SearchResult>> _searchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub;
  final BoolQNoServiceViewModelUsingGetNPForAntiSpam<Bool,ListBool<Bool>> _boolQNoServiceViewModelUsingGetNPForAntiSpam;
  final StringsQNoServiceViewModelUsingGetNPForSaveLettersSearch<Strings,ListStrings<Strings>> _stringsQNoServiceViewModelUsingGetNPForSaveLettersSearch;
  final SearchResultInLoadingQNoServiceViewModelUsingGetListNP<SearchResultInLoading,ListSearchResultInLoading<SearchResultInLoading>> _searchResultInLoadingQNoServiceViewModelUsingGetListNP;
  final CustomTimerQNoServiceViewModelUsingGetNP<CustomTimer,ListCustomTimer<CustomTimer>> _customTimerQNoServiceViewModelUsingGetNP;

  SearchBarWidgetListViewModel(this._searchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub, this._boolQNoServiceViewModelUsingGetNPForAntiSpam, this._stringsQNoServiceViewModelUsingGetNPForSaveLettersSearch, this._searchResultInLoadingQNoServiceViewModelUsingGetListNP, this._customTimerQNoServiceViewModelUsingGetNP);

  Future<void> getListSearchResultFromGithubCacheAndHttpClientServiceParameterStringAndSetListSearchResultAndInGeneralOneTask(String search)
  async {
    _stringsQNoServiceViewModelUsingGetNPForSaveLettersSearch
        .getStringsUsingGetNPForSaveLettersSearch
        ?.setParameterField = search;
    if(_stringsQNoServiceViewModelUsingGetNPForSaveLettersSearch
        .getStringsUsingGetNPForSaveLettersSearch
        !.getParameterField
        .isEmpty)
    {
      _customTimerQNoServiceViewModelUsingGetNP
          .getCustomTimerUsingGetNP
          ?.oneParametersNamedForSearchBarWidget();
      _boolQNoServiceViewModelUsingGetNPForAntiSpam
          .getBoolUsingGetNPForAntiSpam
          ?.setParameterIsField = false;
      _searchResultInLoadingQNoServiceViewModelUsingGetListNP
          .getListSearchResultInLoadingUsingGetListNP
          ?.setThreeParametersNamedForSearchBarWidget();
      _searchResultInLoadingQNoServiceViewModelUsingGetListNP
          .notifyStreamListSearchResultInLoadingUsingGetListNP();
      return;
    }
    if(_boolQNoServiceViewModelUsingGetNPForAntiSpam
        .getBoolUsingGetNPForAntiSpam
        !.getParameterIsField)
    {
      return;
    }
    _boolQNoServiceViewModelUsingGetNPForAntiSpam
        .getBoolUsingGetNPForAntiSpam
        ?.setParameterIsField = true;
    _searchResultInLoadingQNoServiceViewModelUsingGetListNP
        .getListSearchResultInLoadingUsingGetListNP
        ?.setOneParametersNamedForSearchBarWidget();
    _searchResultInLoadingQNoServiceViewModelUsingGetListNP
        .notifyStreamListSearchResultInLoadingUsingGetListNP();
    _customTimerQNoServiceViewModelUsingGetNP
        .getCustomTimerUsingGetNP
        ?.setOneParametersNamedForSearchBarWidget =
        () async {
          _boolQNoServiceViewModelUsingGetNPForAntiSpam
              .getBoolUsingGetNPForAntiSpam
              ?.setParameterIsField = false;
          // 1
          await _searchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub
              .getListSearchResultFromGithubCacheAndHttpClientServiceParameterStringAndSetListSearchResult(StringTypeParameter.success(_stringsQNoServiceViewModelUsingGetNPForSaveLettersSearch.getStringsUsingGetNPForSaveLettersSearch!.getParameterField));
          _searchResultInLoadingQNoServiceViewModelUsingGetListNP
              .getListSearchResultInLoadingUsingGetListNP
              ?.setTwoParametersNamedForSearchBarWidget = _searchResultQGithubCacheAndHttpClientServiceViewModelUsingGetListParameterStringForSearchFromApiGithub.getListSearchResultUsingGetListParameterStringForSearchFromApiGithub!;
          _searchResultInLoadingQNoServiceViewModelUsingGetListNP
              .notifyStreamListSearchResultInLoadingUsingGetListNP();
        };
  }
}