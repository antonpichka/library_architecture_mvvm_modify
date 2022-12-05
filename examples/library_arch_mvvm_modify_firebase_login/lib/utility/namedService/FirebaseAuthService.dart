import 'package:library_arch_mvvm_modify_firebase_login/utility/namedSingleton/FirebaseAuthSingleton.dart';

class FirebaseAuthService {
  late final FirebaseAuthSingleton? _firebaseAuthSingleton;

  FirebaseAuthSingleton? get getFirebaseAuthSingleton {
    if(_firebaseAuthSingleton != null) {
      return _firebaseAuthSingleton;
    }
    _firebaseAuthSingleton = FirebaseAuthSingleton();
    return _firebaseAuthSingleton;
  }
}