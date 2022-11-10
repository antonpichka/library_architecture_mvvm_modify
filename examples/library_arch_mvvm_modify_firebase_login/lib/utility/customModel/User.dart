import 'package:library_architecture_mvvm_modify/base_model_named_database/base_model_named.dart';

class User
    extends BaseModelNamed
{
  String id;
  String email;
  String name;
  String photo;

  User(this.id,this.email,this.name,this.photo) : super(id);

  static User get getUser => User("","","","");

  bool isEmptyParameterId() {
    return id.isEmpty;
  }

  bool isNotEmptyParameterId() {
    return id.isNotEmpty;
  }
}