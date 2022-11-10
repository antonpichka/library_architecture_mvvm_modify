import 'package:library_arch_mvvm_modify_firebase_login/utility/customModel/User.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/base_model_named.dart';

class UserFirebaseAuth
    extends BaseModelNamed
{
  User user;

  UserFirebaseAuth(this.user) : super(user.uniqueId);

  static UserFirebaseAuth get getUserFirebaseAuth => UserFirebaseAuth(User.getUser);

}