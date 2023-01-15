import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';
import 'package:test/test.dart';

void main() {
  group('get success', () {
    test('getEnumListPostForPostsListWidget success', () {
      final listPost = ListPost.getListPostForSuccess;
      expect(listPost.getEnumListPostForPostsListWidget, EnumListPostForPostsListWidget.isEmptyList);
    });
    test('getOneParametersNamedForPostsListWidget success', () {
      final listPost = ListPost.getListPostForSuccess;
      expect(listPost.getOneParametersNamedForPostsListWidget, true);
    });
    test('getTwoParametersNamedForPostsListWidget success', () {
      final listPost = ListPost.getListPostForSuccess;
      expect(listPost.getTwoParametersNamedForPostsListWidget, 0);
    });
  });
  group('set success', () {
    test('setOneParametersNamedForPostsListWidget success', () {
      final listPost = ListPost.getListPostForSuccess;
      listPost
          .setOneParametersNamedForPostsListWidget = ListPost.getListPostForSuccess;
      expect(listPost
          .exceptionController
          .enumWhatIsTheException, EnumWhatIsTheException.noException);
      expect(listPost.hasReachedMax, true);
      expect(listPost.listModel, []);
    });
    test('setOneParametersNamedForPostsListWidget success', () {
      final listPost = ListPost.getListPostForSuccess;
      listPost
          .setTwoParametersNamedForPostsListWidget = ListPost.getListPostForSuccess;
      expect(listPost
          .exceptionController
          .enumWhatIsTheException, EnumWhatIsTheException.noException);
      expect(listPost.hasReachedMax, true);
    });
  });
  group('is success', () {
    test('isOneParametersNamedForPostsListWidget success', () {
      final listPost = ListPost.getListPostForSuccess;
      expect(listPost.isOneParametersNamedForPostsListWidget(1),true);
    });
  });
}