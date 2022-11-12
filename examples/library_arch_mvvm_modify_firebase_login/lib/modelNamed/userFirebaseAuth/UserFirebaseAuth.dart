import 'package:library_arch_mvvm_modify_firebase_login/utility/model/User.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/base_model_named.dart';

class UserFirebaseAuth
    extends BaseModelNamed
{
  User user;

  UserFirebaseAuth.success(this.user) : super.success(user.id);
  UserFirebaseAuth.exception(BaseException exception) : super.exception(exception);

  static UserFirebaseAuth get getUserFirebaseAuth => UserFirebaseAuth.success(User.getUser);

}