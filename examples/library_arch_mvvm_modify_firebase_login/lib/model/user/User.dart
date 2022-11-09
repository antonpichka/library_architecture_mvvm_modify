import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class User
    extends BaseModel
{
  String email;
  String name;
  String photo;

  User(String uniqueId,
      this.email,
      this.name,
      this.photo) : super(uniqueId);

  bool isEmptyParameterUniqueId() {
    return uniqueId.isEmpty;
  }

  bool isNotEmptyParameterUniqueId() {
    return uniqueId.isNotEmpty;
  }

  static User get getDefaultUser => User("","","","");
}