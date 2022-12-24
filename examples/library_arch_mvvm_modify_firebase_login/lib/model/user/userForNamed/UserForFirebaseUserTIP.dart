import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';

class UserForFirebaseUserTIP
    implements IModelForNamedTIP<User,firebase_auth.User>
{
  @override
  User? getModelForNamedTIP(firebase_auth.User? parameter) {
    return User.success(
        parameter!.uid,
        parameter.email,
        parameter.displayName,
        parameter.photoURL);
  }

}