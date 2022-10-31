import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';

class PostJsonPlaceholderDatabase
    extends BaseModelNamedDatabase<Post>
{
  final int id;
  final String title;
  final String body;

  PostJsonPlaceholderDatabase(
      this.id,
      this.title,
      this.body) : super(id.toString());

  static PostJsonPlaceholderDatabase fromMap(
      Map<String,dynamic> map)
  {
    return PostJsonPlaceholderDatabase(
        map[constParameterId],
        map[constParameterTitle],
        map[constParameterBody]);
  }

  @override
  Post toBaseModel() {
    return Post(uniqueId, title, body);
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      constParameterId : id,
      constParameterTitle : title,
      constParameterBody : body
    };
  }

  static const constParameterId = "id";
  static const constParameterTitle = "title";
  static const constParameterBody = "body";
}