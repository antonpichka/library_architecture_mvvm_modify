import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class Post
    extends BaseModel
{
  @protected
  int? id;
  @protected
  String? title;
  @protected
  String? body;

  Post.success(this.id,this.title,this.body) : super.success(id.toString());
  Post.exception(super.exception) : super.exception();

  static Post get getPostForSuccess => Post.success(0,"", "");
  static const constParameterId = "id";
  static const constParameterTitle = "title";
  static const constParameterBody = "body";

  String? get getOneParametersNamedForPostsListWidget => getParameterUniqueId;
  String? get getTwoParametersNamedForPostsListWidget => title;
  String? get getThreeParametersNamedForPostsListWidget => body;
}