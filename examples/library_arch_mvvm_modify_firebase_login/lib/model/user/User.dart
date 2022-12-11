import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';

enum EnumUserForMainView {
  authenticated,
  unauthenticated,
  localException
}

class User
    extends BaseModel
{
  String? email;
  String? name;
  String? photo;

  User.success(super.uniqueId,this.email,this.name,this.photo) : super.success();
  User.exception(super.exception) : super.exception();

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
  static User get getUserForSuccessWhereParametersEqualsStringNull => User.success("null","null","null","null");
  static const constUserQTempCacheService = "__user_q_temp_cache_service__";

  EnumUserForMainView get getEnumUserForMainView {
    if(exceptionController.enumWhatIsTheException == EnumWhatIsTheException.localException) {
      return EnumUserForMainView.localException;
    }
    if(isThreeParametersNamedForMainView()) {
      return EnumUserForMainView.unauthenticated;
    }
    return EnumUserForMainView.authenticated;
  }

  bool isOneParametersNamedForCircleAvatarWidget() {
    return photo != null;
  }

  bool isTwoParametersNamedForCircleAvatarWidget() {
    return photo == null;
  }

  bool isThreeParametersNamedForMainView() {
    return getParameterUniqueId == "null" &&
        email == "null" &&
        name == "null" &&
        photo == "null";
  }
}