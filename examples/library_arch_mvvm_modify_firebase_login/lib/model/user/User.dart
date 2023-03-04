import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';
import 'package:meta/meta.dart';

enum EnumUserForMainView { authenticated, unauthenticated, localException }

class User extends BaseModel {
  static const String constUserQTempCacheService =
      "__user_q_temp_cache_service__";

  String? email;
  String? name;
  String? photo;

  User.success(super.uniqueId, this.email, this.name, this.photo)
      : super.success();
  User.exception(super.exception) : super.exception();

  static User get getUserForSuccess => User.success("", "", "", "");
  static User get getUserForSuccessWhereParametersEqualsNull =>
      User.success(null, null, null, null);

  EnumUserForMainView get getEnumUserForMainView {
    if (exceptionController.enumWhatIsTheException ==
        EnumWhatIsTheException.localException) {
      return EnumUserForMainView.localException;
    }
    if (isOneParametersNamedForGetEnumUserForMainView() ?? false) {
      return EnumUserForMainView.unauthenticated;
    }
    return EnumUserForMainView.authenticated;
  }

  String? get getOneParametersNamedForOneUserTextWidget => email;
  String? get getOneParametersNamedForTwoUserTextWidget => name;
  String? get getOneParametersNamedForCircleAvatarWidget => photo;

  bool? isOneParametersNamedForCircleAvatarWidget() {
    return photo != null;
  }

  bool? isTwoParametersNamedForCircleAvatarWidget() {
    return photo == null;
  }

  @protected
  bool? isOneParametersNamedForGetEnumUserForMainView() {
    return uniqueId == null && email == null && name == null && photo == null;
  }
}
