import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/namedService/namedSingleton/FirebaseAuthSingleton.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/namedService/namedSingleton/GoogleSignInSingleton.dart';

class FirebaseAuthAndGoogleSignInService {
  FirebaseAuthSingleton? _firebaseAuthSingleton;
  GoogleSignInSingleton? _googleSignInSingleton;

  FirebaseAuthSingleton? get getFirebaseAuthSingleton {
    if(_firebaseAuthSingleton != null) {
      return _firebaseAuthSingleton;
    }
    _firebaseAuthSingleton = FirebaseAuthSingleton();
    return _firebaseAuthSingleton;
  }

  GoogleSignInSingleton? get getGoogleSignInSingleton {
    if(_googleSignInSingleton != null) {
      return _googleSignInSingleton;
    }
    _googleSignInSingleton = GoogleSignInSingleton();
    return _googleSignInSingleton;
  }
}