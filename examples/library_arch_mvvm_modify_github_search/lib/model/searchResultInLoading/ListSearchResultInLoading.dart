import 'package:library_arch_mvvm_modify_github_search/model/searchResult/ListSearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResult/SearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/SearchResultInLoading.dart';
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

  static ListSearchResultInLoading get getListSearchResultInLoadingForSuccess => ListSearchResultInLoading.success([],false,true);

  EnumListSearchResultInLoadingForSearchBodyWidget get getEnumListSearchResultInLoadingForSearchBodyWidget {
    if(isEmptyValueFromTextInput!) {
      return EnumListSearchResultInLoadingForSearchBodyWidget.isEmptyValueFromTextInput;
    }
    if(isLoading!) {
      return EnumListSearchResultInLoadingForSearchBodyWidget.isLoading;
    }
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumListSearchResultInLoadingForSearchBodyWidget.error;
    }
    if(listModel!.isEmpty) {
      return EnumListSearchResultInLoadingForSearchBodyWidget.isEmptyList;
    }
    return EnumListSearchResultInLoadingForSearchBodyWidget.success;
  }

  String? get getOneParametersNamedForSearchBodyWidget {
    switch(exceptionController.getMessageForViewParameterException) {
      case "403":
        return "The server understood the request, but is refusing to fulfill it.";
      default:
        return exceptionController.getMessageForViewParameterException;
    }
  }

  void setOneParametersNamedForSearchBarWidget() {
    isLoading = true;
    isEmptyValueFromTextInput = false;
  }

  set setTwoParametersNamedForSearchBarWidget(ListSearchResult listSearchResult) {
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