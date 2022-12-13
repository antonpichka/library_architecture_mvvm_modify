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

  User.success(super.uniqueId,this._email,this._name,this._photo) : super.success();
  User.exception(super.exception) : super.exception();

  static User get getUserForSuccess => User.success("","","","");
  static User get getUserForSuccessWhereParametersEqualsStringNull => User.success("null","null","null","null");
  static const constUserQTempCacheService = "__user_q_temp_cache_service__";

  @protected
  @nonVirtual
  String get getParameterEmail => _email!;
  @protected
  @nonVirtual
  String get getParameterName => _name!;
  @protected
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

  @protected
  @nonVirtual
  set setParameterEmail(String email) => _email = email;
  @protected
  @nonVirtual
  set setParameterName(String name) => _name = name;
  @protected
  @nonVirtual
  set setParameterPhoto(String photo) => _photo = photo;

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