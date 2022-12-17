import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';

class PostFirstBranchOne
    extends Post
{
  PostFirstBranchOne.success(super.id, super.title, super.body) : super.success();
  PostFirstBranchOne.exception(super.exception) : super.exception();

  static PostFirstBranchOne get getPostFirstBranchOneForSuccess => PostFirstBranchOne.success(0,"", "");

  @override
  String? get getOneParametersNamedForPostsListWidget => "${(id ?? 0) * 10}";
  @override
  String? get getTwoParametersNamedForPostsListWidget => "$title POST EXT HELLO";
}