import 'package:flutter/foundation.dart';
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
  @protected
  String? email;
  @protected
  String? name;
  @protected
  String? photo;

  User.success(super.uniqueId,this.email,this.name,this.photo) : super.success();
  User.exception(super.exception) : super.exception();

  static User get getUserForSuccess => User.success("","","","");
  static User get getUserForSuccessWhereParametersEqualsStringNull => User.success("null","null","null","null");
  static const constUserQTempCacheService = "__user_q_temp_cache_service__";

  EnumUserForMainView get getEnumUserForMainView {
    if(getParameterExceptionController.enumWhatIsTheException == EnumWhatIsTheException.localException) {
      return EnumUserForMainView.localException;
    }
    if(isThreeParametersNamedForMainView()) {
      return EnumUserForMainView.unauthenticated;
    }
    return EnumUserForMainView.authenticated;
  }

  String? get getOneParametersNamedForHomeView => email;
  String? get getTwoParametersNamedForHomeView => name;
  String? get getOneParametersNamedForCircleAvatarWidget => photo;

  bool isOneParametersNamedForCircleAvatarWidget() {
    return photo != null;
  }

  bool isTwoParametersNamedForCircleAvatarWidget() {
    return photo == null;
  }

  bool isThreeParametersNamedForMainView() {
    return uniqueId == "null" &&
        email == "null" &&
        name == "null" &&
        photo == "null";
  }
}