import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:test/test.dart';

void main() {
  group('get success', () {
    test('getOneParametersNamedForPostsListWidget success', () {
      final post = Post.getPostForSuccess;
      expect(post.getOneParametersNamedForPostsListWidget, "0");
    });
    test('getTwoParametersNamedForPostsListWidget success', () {
      final post = Post.getPostForSuccess;
      expect(post.getTwoParametersNamedForPostsListWidget, "");
    });
    test('getThreeParametersNamedForPostsListWidget success', () {
      final post = Post.getPostForSuccess;
      expect(post.getThreeParametersNamedForPostsListWidget, "");
    });
  });
}