import 'package:library_architecture_mvvm_modify/base_model_named_database/base_model_named_database.dart';

class PostJsonPlaceholderDatabase
    extends BaseModelNamedDatabase
{
  int id;
  String title;
  String body;

  PostJsonPlaceholderDatabase(
      this.id,
      this.title,
      this.body) : super(id.toString());

  factory PostJsonPlaceholderDatabase.fromMap(
      Map<String,dynamic> map)
  {
    return PostJsonPlaceholderDatabase(
        map[constParameterId],
        map[constParameterTitle],
        map[constParameterBody]);
  }

  static const constParameterId = "id";
  static const constParameterTitle = "title";
  static const constParameterBody = "body";
  static PostJsonPlaceholderDatabase get getPostJsonPlaceholderDatabase => PostJsonPlaceholderDatabase(0,"", "");

  Map<String, dynamic> toMap() {
    return {
      constParameterId : id,
      constParameterTitle : title,
      constParameterBody : body
    };
  }
}