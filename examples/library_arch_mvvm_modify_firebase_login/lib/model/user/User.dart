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
  String? _email;
  String? _name;
  String? _photo;

  User.success(super._uniqueId,this._email,this._name,this._photo) : super.success();
  User.exception(super.exception) : super.exception();

  static User get getUserForSuccess => User.success("","","","");
  static User get getUserForSuccessWhereParametersEqualsStringNull => User.success("null","null","null","null");
  static const constUserQTempCacheService = "__user_q_temp_cache_service__";

  @nonVirtual
  String get getParameterEmail => _email!;
  @nonVirtual
  String get getParameterName => _name!;
  @nonVirtual
  String get getParameterPhoto => _photo!;

  EnumUserForMainView get getEnumUserForMainView {
    if(getParameterExceptionController.enumWhatIsTheException == EnumWhatIsTheException.localException) {
      return EnumUserForMainView.localException;
    }
    if(isThreeParametersNamedForMainView()) {
      return EnumUserForMainView.unauthenticated;
    }
    return EnumUserForMainView.authenticated;
  }

  String get getOneParametersNamedForHomeView => _email!;
  String get getTwoParametersNamedForHomeView => _name!;
  String get getOneParametersNamedForCircleAvatarWidget => _photo!;

  bool isOneParametersNamedForCircleAvatarWidget() {
    return _photo != null;
  }

  bool isTwoParametersNamedForCircleAvatarWidget() {
    return _photo == null;
  }

  bool isThreeParametersNamedForMainView() {
    return getParameterUniqueId == "null" &&
        _email == "null" &&
        _name == "null" &&
        _photo == "null";
  }
}