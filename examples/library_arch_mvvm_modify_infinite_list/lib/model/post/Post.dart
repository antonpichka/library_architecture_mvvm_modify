import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class Post
    extends BaseModel
{
  String uniqueId;
  String title;
  String body;

  Post(this.uniqueId,
      this.title,
      this.body) : super(uniqueId);

  @override
  String toString() {
    return "$uniqueId : $title : $body";
  }

  static Post get getDefaultPost => Post("","","");
}