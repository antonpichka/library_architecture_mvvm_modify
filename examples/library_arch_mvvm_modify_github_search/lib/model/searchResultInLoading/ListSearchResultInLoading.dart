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
  bool? isLoading;
  bool? isEmptyValueFromTextInput;

  ListSearchResultInLoading.success(super.list,this.isLoading,this.isEmptyValueFromTextInput) : super.success();

  static ListSearchResultInLoading<SearchResultInLoading> get getListSearchResultInLoadingForSuccess => ListSearchResultInLoading<SearchResultInLoading>.success([],false,true);

  EnumListSearchResultInLoadingForSearchBodyWidget get getEnumListSearchResultInLoadingForSearchBodyWidget {
    if(isEmptyValueFromTextInput!) {
      return EnumListSearchResultInLoadingForSearchBodyWidget.isEmptyValueFromTextInput;
    }
    if(isLoading!) {
      return EnumListSearchResultInLoadingForSearchBodyWidget.isLoading;
    }
    if(exceptionController.isExceptionNotEqualsNull()) {
      return EnumListSearchResultInLoadingForSearchBodyWidget.error;
    }
    if(listModel!.isEmpty) {
      return EnumListSearchResultInLoadingForSearchBodyWidget.isEmptyList;
    }
    return EnumListSearchResultInLoadingForSearchBodyWidget.success;
  }

  String? get getOneParametersNamedForSearchBodyWidget => ConcretiveMessageForView
      .getMessageForSearchBodyWidget(exceptionController.getMessageForViewByException);

  void setOneParametersNamedForSearchBarWidget() {
    isLoading = true;
    isEmptyValueFromTextInput = false;
  }

  set setTwoParametersNamedForSearchBarWidget(ListSearchResult<SearchResult> listSearchResult) {
    List<SearchResultInLoading> listSearchResultInLoading = List.empty(growable: true);
    listSearchResult.listModel?.forEach((SearchResult searchResult) {
      listSearchResultInLoading.add(SearchResultInLoading.success(searchResult));
    });
    isLoading = false;
    isEmptyValueFromTextInput = false;
    listModel = listSearchResultInLoading as List<T>;
    exceptionController = listSearchResult.exceptionController;
  }

  void setThreeParametersNamedForSearchBarWidget() {
    isLoading = false;
    isEmptyValueFromTextInput = true;
  }
}