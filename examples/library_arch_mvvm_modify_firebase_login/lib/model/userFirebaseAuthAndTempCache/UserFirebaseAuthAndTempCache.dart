import 'package:library_arch_mvvm_modify_firebase_login/utility/customModel/User.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/base_model_named.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class UserFirebaseAuthAndTempCache
    extends BaseModelNamed
{
  User user;

  UserFirebaseAuthAndTempCache(this.user) : super(user.id);

  factory UserFirebaseAuthAndTempCache.fromFirebaseUser(
      firebase_auth.User firebaseUser)
  {
    return UserFirebaseAuthAndTempCache(User(
        firebaseUser.uid,
        firebaseUser.email,
        firebaseUser.displayName,
        firebaseUser.photoURL));
  }

  static UserFirebaseAuthAndTempCache get getUserFirebaseAuthAndTempCache => UserFirebaseAuthAndTempCache(User.getUser);
}