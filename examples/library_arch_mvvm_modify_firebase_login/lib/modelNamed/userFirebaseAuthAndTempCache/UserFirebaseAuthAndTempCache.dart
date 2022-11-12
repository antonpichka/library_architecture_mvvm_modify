import 'package:library_arch_mvvm_modify_firebase_login/utility/model/User.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/base_model_named.dart';

class UserFirebaseAuthAndTempCache
    extends BaseModelNamed
{
  User user;

  UserFirebaseAuthAndTempCache.success(this.user) : super.success(user.id);
  UserFirebaseAuthAndTempCache.exception(BaseException exception) : super.exception(exception);

  factory UserFirebaseAuthAndTempCache.fromFirebaseUser(
      firebase_auth.User firebaseUser)
  {
    return UserFirebaseAuthAndTempCache.success(User(
        firebaseUser.uid,
        firebaseUser.email,
        firebaseUser.displayName,
        firebaseUser.photoURL));
  }

  static UserFirebaseAuthAndTempCache get getUserFirebaseAuthAndTempCache => UserFirebaseAuthAndTempCache.success(User.getUser);
}