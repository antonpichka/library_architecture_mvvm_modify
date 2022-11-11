import 'package:library_arch_mvvm_modify_firebase_login/utility/customModel/User.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/base_model_named.dart';

class UserTempCache
    extends BaseModelNamed
{
  User user;

  UserTempCache(this.user) : super(user.id);

  static UserTempCache get getUserTempCache => UserTempCache(User.getUser);
  static const constUserTempCache = "__user_temp_cache__";
}