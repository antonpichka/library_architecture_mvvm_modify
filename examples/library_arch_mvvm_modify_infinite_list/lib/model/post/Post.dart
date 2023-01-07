import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class Post
    extends BaseModel
{
  int? id;
  String? title;
  String? body;

  Post.success(this.id,this.title,this.body) : super.success(id.toString());
  Post.exception(super.exception) : super.exception();

  static Post get getPostForSuccess => Post.success(0,"", "");
  static const constParameterId = "id";
  static const constParameterTitle = "title";
  static const constParameterBody = "body";

  String? get getOneParametersNamedForPostsListWidget => uniqueId;
  String? get getTwoParametersNamedForPostsListWidget => title;
  String? get getThreeParametersNamedForPostsListWidget => body;
}