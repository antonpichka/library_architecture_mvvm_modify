import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/base_model.dart';

class Post
    extends BaseModel
{
  int id;
  String title;
  String body;

  Post.success(this.id,this.title,this.body) : super.success(id.toString());
  Post.exception(BaseException exception) : super.exception(exception);

  factory Post.fromMapForSuccess(
      Map<String,dynamic> map)
  {
    return Post.success(
        map[constParameterId],
        map[constParameterTitle],
        map[constParameterBody]);
  }

  static Post get getPostForSuccess => Post.success(0,"", "");
  static const constPostsUrl = "/posts";
  static const constParameterId = "id";
  static const constParameterTitle = "title";
  static const constParameterBody = "body";
}