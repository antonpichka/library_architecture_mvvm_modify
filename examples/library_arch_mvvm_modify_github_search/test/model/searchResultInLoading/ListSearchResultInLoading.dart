import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/ListSearchResultInLoading.dart';
import 'package:test/test.dart';

void main() {
  group('get success', () {
    test('getEnumListSearchResultInLoadingForSearchBodyWidget success', () {
      final listSearchResultInLoading = ListSearchResultInLoading.getListSearchResultInLoadingForSuccess;
      expect(listSearchResultInLoading.getEnumListSearchResultInLoadingForSearchBodyWidget,EnumListSearchResultInLoadingForSearchBodyWidget.isEmptyValueFromTextInput);
    });
    test('getOneParametersNamedForSearchBodyWidget success', () {
      final listSearchResultInLoading = ListSearchResultInLoading.getListSearchResultInLoadingForSuccess;
      expect(listSearchResultInLoading.getOneParametersNamedForSearchBodyWidget, null);
    });
  });
}