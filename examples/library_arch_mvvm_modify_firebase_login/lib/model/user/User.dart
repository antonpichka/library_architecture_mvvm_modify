import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/base_model.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:library_architecture_mvvm_modify/utility/enum_what_is_the_exception.dart';

enum EnumStatusUserForMainView {
  authenticated,
  unauthenticated,
  localException
}

class User
    extends BaseModel
{
  String email;
  String name;
  String photo;

  User.success(String uniqueId,this.email,this.name,this.photo) : super.success(uniqueId);
  User.exception(BaseException exception) : super.exception(exception);

  factory User.fromFirebaseUserForSuccess(
      firebase_auth.User firebaseUser)
  {
    return User.success(
        firebaseUser.uid,
        firebaseUser.email,
        firebaseUser.displayName,
        firebaseUser.photoURL);
  }

  static User get getUserForSuccess => User.success("","","","");
  static User get getUserForSuccessWhereDataEqualsNull => User.success("null","null","null","null");
  static const constUserQTempCacheService = "__user_q_temp_cache_service__";

  EnumStatusUserForMainView get getEnumStatusUserForMainView {
    if(exceptionControllerForModel.enumWhatIsTheException == EnumWhatIsTheException.localException) {
      return EnumStatusUserForMainView.localException;
    }
    if(isEqualsNullParametersUniqueIdAndEmailAndNameAndPhoto()) {
      return EnumStatusUserForMainView.unauthenticated;
    }
    return EnumStatusUserForMainView.authenticated;
  }

  bool isEmptyParameterUniqueId() {
    return uniqueId.isEmpty;
  }

  bool isNotEmptyParameterUniqueId() {
    return uniqueId.isNotEmpty;
  }

  bool isNotNullParameterPhoto() {
    return photo != null;
  }

  bool isNullParameterPhoto() {
    return photo == null;
  }

  bool isEqualsNullParametersUniqueIdAndEmailAndNameAndPhoto() {
    return uniqueId == "null" &&
        email.isEmpty == "null" &&
        name.isEmpty == "null" &&
        photo.isEmpty == "null";
  }
}