import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/base_model.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class User
    extends BaseModel
{
  String email;
  String name;
  String photo;

  User.success(String uniqueId,this.email,this.name,this.photo) : super.success(uniqueId);
  User.exception(BaseException exception) : super.exception(exception);

  factory User.fromFirebaseUser(
      firebase_auth.User firebaseUser)
  {
    return User.success(
        firebaseUser.uid,
        firebaseUser.email,
        firebaseUser.displayName,
        firebaseUser.photoURL);
  }

  static User get getUser => User.success("","","","");
  static const constUserQTempCacheService = "__user_q_temp_cache_service__";

  bool isEmptyParameterUniqueId() {
    return uniqueId.isEmpty;
  }

  bool isNotEmptyParameterUniqueId() {
    return uniqueId.isNotEmpty;
  }
}