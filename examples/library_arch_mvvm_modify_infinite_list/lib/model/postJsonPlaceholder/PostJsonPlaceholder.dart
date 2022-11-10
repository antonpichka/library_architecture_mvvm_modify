import 'package:library_architecture_mvvm_modify/base_model_named_database/base_model_named.dart';

class PostJsonPlaceholder
    extends BaseModelNamed
{
  int id;
  String title;
  String body;

  PostJsonPlaceholder(
      this.id,
      this.title,
      this.body) : super(id.toString());

  factory PostJsonPlaceholder.fromMap(
      Map<String,dynamic> map)
  {
    return PostJsonPlaceholder(
        map[constParameterId],
        map[constParameterTitle],
        map[constParameterBody]);
  }

  static const constParameterId = "id";
  static const constParameterTitle = "title";
  static const constParameterBody = "body";
  static PostJsonPlaceholder get getPostJsonPlaceholder => PostJsonPlaceholder(0,"", "");
}