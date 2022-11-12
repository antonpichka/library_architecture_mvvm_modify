import 'package:library_arch_mvvm_modify_infinite_list/utility/model/Post.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/base_model_named.dart';

class PostJsonPlaceholder
    extends BaseModelNamed
{
  Post post;

  PostJsonPlaceholder.success(this.post) : super.success(post.id.toString());

  PostJsonPlaceholder.exception(BaseException exception) : super.exception(exception);

  factory PostJsonPlaceholder.fromMap(
      Map<String,dynamic> map)
  {
    return PostJsonPlaceholder.success(Post(
        map[constParameterId],
        map[constParameterTitle],
        map[constParameterBody]));
  }
  static PostJsonPlaceholder get getPostJsonPlaceholder => PostJsonPlaceholder.success(Post.getPost);
  static const constPostsUrl = "/posts";
  static const constParameterId = "id";
  static const constParameterTitle = "title";
  static const constParameterBody = "body";
}