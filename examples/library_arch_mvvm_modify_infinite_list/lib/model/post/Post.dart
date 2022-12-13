import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class Post
    extends BaseModel
{
  int? _id;
  String? _title;
  String? _body;

  Post.success(this._id,this._title,this._body) : super.success(_id.toString());
  Post.exception(super.exception) : super.exception();

  static Post get getPostForSuccess => Post.success(0,"", "");
  static const constPostsUrl = "/posts";
  static const constParameterId = "id";
  static const constParameterTitle = "title";
  static const constParameterBody = "body";

  @protected
  @nonVirtual
  int get getParameterId => _id!;
  @protected
  @nonVirtual
  String get getParameterTitle => _title!;
  @protected
  @nonVirtual
  String get getParameterBody => _body!;
  String get getOneParametersNamedForPostsListWidget => getParameterUniqueId!;
  String get getTwoParametersNamedForPostsListWidget => _title!;
  String get getThreeParametersNamedForPostsListWidget => _body!;

  @protected
  @nonVirtual
  set setParameterId(int id) => _id = id;
  @protected
  @nonVirtual
  set setParameterTitle(String title) => _title = title;
  @protected
  @nonVirtual
  set setParameterBody(String body) => _body = body;
}