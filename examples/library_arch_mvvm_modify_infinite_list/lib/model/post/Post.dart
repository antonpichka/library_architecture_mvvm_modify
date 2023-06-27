import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class Post extends BaseModel {
  static const String constParameterId = "id";
  static const String constParameterTitle = "title";
  static const String constParameterBody = "body";

  int? id;
  String? title;
  String? body;

  Post.success(this.id, this.title, this.body) : super.success(id.toString());
  Post.exception(super.exception) : super.exception();
  factory Post.fromMap(Map<String, dynamic> map) {
    return Post.success(map[constParameterId], map[constParameterTitle],
        map[constParameterBody]);
  }

  static Post get getPostForSuccess => Post.success(0, "", "");
  String? get getOneParametersNamedForPostsListWidget => uniqueId;
  String? get getTwoParametersNamedForPostsListWidget => title;
  String? get getThreeParametersNamedForPostsListWidget => body;
}
