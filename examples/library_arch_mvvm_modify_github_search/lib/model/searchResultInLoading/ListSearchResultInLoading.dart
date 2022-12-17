import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/ListSearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/SearchResultInLoading.dart';
import 'package:library_arch_mvvm_modify_github_search/utility/ConcretiveMessageForView.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

enum EnumListSearchResultInLoadingForSearchBodyWidget {
  error,
  isEmptyValueFromTextInput,
  isLoading,
  isEmptyList,
  success
}

class ListSearchResultInLoading<T extends SearchResultInLoading>
    extends BaseListModel<T>
{
  bool? _isLoading;
  bool? _isEmptyValueFromTextInput;

  ListSearchResultInLoading.success(super.list,this._isLoading,this._isEmptyValueFromTextInput) : super.success();

  static ListSearchResultInLoading<SearchResultInLoading> get getListSearchResultInLoadingForSuccess => ListSearchResultInLoading<SearchResultInLoading>.success([],false,true);

  EnumListSearchResultInLoadingForSearchBodyWidget get getEnumListSearchResultInLoadingForSearchBodyWidget {
    if(_isEmptyValueFromTextInput!) {
      return EnumListSearchResultInLoadingForSearchBodyWidget.isEmptyValueFromTextInput;
    }
    if(_isLoading!) {
      return EnumListSearchResultInLoadingForSearchBodyWidget.isLoading;
    }
    if(getParameterExceptionController.isExceptionNotEqualsNull()) {
      return EnumListSearchResultInLoadingForSearchBodyWidget.error;
    }
    if(getParameterList!.isEmpty) {
      return EnumListSearchResultInLoadingForSearchBodyWidget.isEmptyList;
    }
    return EnumListSearchResultInLoadingForSearchBodyWidget.success;
  }

  @protected
  @nonVirtual
  bool? get getParameterIsLoading => _isLoading;
  @protected
  @nonVirtual
  bool? get getParameterIsEmptyValueFromTextInput => _isEmptyValueFromTextInput;
  String? get getOneParametersNamedForSearchBodyWidget => ConcretiveMessageForView.getMessageForSearchBodyWidget(getParameterExceptionController.getMessageForViewByException);

  @protected
  @nonVirtual
  set setParameterIsLoading(bool isLoading) => _isLoading = isLoading;
  @protected
  @nonVirtual
  set setParameterIsEmptyValueFromTextInput(bool isEmptyValueFromTextInput) => _isEmptyValueFromTextInput = isEmptyValueFromTextInput;

  void setOneParametersNamedForSearchBarWidget() {
    _isLoading = true;
    _isEmptyValueFromTextInput = false;
  }

  set setTwoParametersNamedForSearchBarWidget(ListSearchResult<SearchResult> listSearchResult) {
    List<SearchResultInLoading> listSearchResultInLoading = List.empty(growable: true);
    listSearchResult.getParameterList?.forEach((SearchResult searchResult) {
      listSearchResultInLoading.add(SearchResultInLoading.success(searchResult));
    });
    _isLoading = false;
    _isEmptyValueFromTextInput = false;
    setParameterList = listSearchResultInLoading as List<T>;
    setParameterExceptionController = listSearchResult.getParameterExceptionController;
  }

  void setThreeParametersNamedForSearchBarWidget() {
    _isLoading = false;
    _isEmptyValueFromTextInput = true;
    setParameterList = List<T>.empty();
  }
}