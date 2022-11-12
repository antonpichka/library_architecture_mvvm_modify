import 'package:library_arch_mvvm_modify_firebase_login/utility/model/User.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/base_model_named.dart';

class UserTempCache
    extends BaseModelNamed
{
  User user;

  UserTempCache.success(this.user) : super.success(user.id);
  UserTempCache.exception(BaseException exception) : super.exception(exception);

  static UserTempCache get getUserTempCache => UserTempCache.success(User.getUser);
  static const constUserTempCache = "__user_temp_cache__";
}