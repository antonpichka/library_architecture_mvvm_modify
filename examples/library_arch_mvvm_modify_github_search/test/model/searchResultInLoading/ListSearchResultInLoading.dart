import 'package:library_arch_mvvm_modify_github_search/model/searchResult/ListSearchResult.dart';
import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/ListSearchResultInLoading.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';
import 'package:test/test.dart';

void main() {
  group('get success', () {
    test('getEnumListSearchResultInLoadingForSearchBodyWidget', () {
      final listSearchResultInLoading = ListSearchResultInLoading.getListSearchResultInLoadingForSuccess;
      expect(listSearchResultInLoading.getEnumListSearchResultInLoadingForSearchBodyWidget,EnumListSearchResultInLoadingForSearchBodyWidget.isEmptyValueFromTextInput);
    });
    test('getOneParametersNamedForSearchBodyWidget', () {
      final listSearchResultInLoading = ListSearchResultInLoading.getListSearchResultInLoadingForSuccess;
      expect(listSearchResultInLoading.getOneParametersNamedForSearchBodyWidget, null);
    });
  });
  group('set success', () {
    test('setOneParametersNamedForSearchBarWidget', () {
      final listSearchResultInLoading = ListSearchResultInLoading.getListSearchResultInLoadingForSuccess;
      listSearchResultInLoading.setOneParametersNamedForSearchBarWidget();
      expect(listSearchResultInLoading.isLoading,true);
      expect(listSearchResultInLoading.isEmptyValueFromTextInput,false);
    });
    test('setTwoParametersNamedForSearchBarWidget', () {
      final listSearchResultInLoading = ListSearchResultInLoading.getListSearchResultInLoadingForSuccess;
      listSearchResultInLoading.setTwoParametersNamedForSearchBarWidget = ListSearchResult.getListSearchResultForSuccess;
      expect(listSearchResultInLoading.isLoading,false);
      expect(listSearchResultInLoading.isEmptyValueFromTextInput,false);
      expect(listSearchResultInLoading.listModel,[]);
      expect(listSearchResultInLoading
          .exceptionController
          .enumWhatIsTheException,EnumWhatIsTheException.noException);
    });
    test('setThreeParametersNamedForSearchBarWidget', () {
      final listSearchResultInLoading = ListSearchResultInLoading.getListSearchResultInLoadingForSuccess;
      listSearchResultInLoading.setThreeParametersNamedForSearchBarWidget();
      expect(listSearchResultInLoading.isLoading,false);
      expect(listSearchResultInLoading.isEmptyValueFromTextInput,true);
    });
  });
}