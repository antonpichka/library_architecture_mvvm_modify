import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';

class PostExt
    extends Post
{
  PostExt.success(super.id, super.title, super.body) : super.success();
  PostExt.exception(super.exception) : super.exception();

  static PostExt get getPostExtForSuccess => PostExt.success(0,"", "");

  @override
  String get getOneParametersNamedForPostsListWidget => "${getParameterId * 10}";
  @override
  String get getTwoParametersNamedForPostsListWidget => "$getParameterTitle POST EXT HELLO";
}