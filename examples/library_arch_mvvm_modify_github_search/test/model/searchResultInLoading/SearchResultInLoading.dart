import 'package:library_arch_mvvm_modify_github_search/model/searchResultInLoading/SearchResultInLoading.dart';
import 'package:test/test.dart';

void main() {
  group('get success', () {
    test('getOneParametersNamedForSearchBodyWidget success', () {
      final searchResultInLoading = SearchResultInLoading.getSearchResultInLoadingForSuccess;
      expect(searchResultInLoading.getOneParametersNamedForSearchBodyWidget, "");
    });
    test('getTwoParametersNamedForSearchBodyWidget success', () {
      final searchResultInLoading = SearchResultInLoading.getSearchResultInLoadingForSuccess;
      expect(searchResultInLoading.getTwoParametersNamedForSearchBodyWidget, "");
    });
    test('getThreeParametersNamedForSearchBodyWidget success', () {
      final searchResultInLoading = SearchResultInLoading.getSearchResultInLoadingForSuccess;
      expect(searchResultInLoading.getThreeParametersNamedForSearchBodyWidget, "");
    });
  });
}