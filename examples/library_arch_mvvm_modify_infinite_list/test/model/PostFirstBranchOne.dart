import 'package:library_arch_mvvm_modify_infinite_list/model/post/PostFirstBranchOne.dart';
import 'package:test/test.dart';

void main() {
  group('get success', () {
    test('getOneParametersNamedForPostsListWidget success', () {
      final post = PostFirstBranchOne.getPostFirstBranchOneForSuccess;
      post.id = 10;
      expect(post.getOneParametersNamedForPostsListWidget, "100");
    });
    test('getTwoParametersNamedForPostsListWidget success', () {
      final post = PostFirstBranchOne.getPostFirstBranchOneForSuccess;
      expect(post.getTwoParametersNamedForPostsListWidget, " POST EXT HELLO");
    });
  });
}