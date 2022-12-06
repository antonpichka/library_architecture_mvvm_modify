import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/namedService/namedSingleton/GoogleSignInSingleton.dart';

class GoogleSignInService {
  GoogleSignInSingleton? _googleSignInSingleton;

  GoogleSignInSingleton? get getGoogleSignInSingleton {
    if(_googleSignInSingleton != null) {
      return _googleSignInSingleton;
    }
    _googleSignInSingleton = GoogleSignInSingleton();
    return _googleSignInSingleton;
  }
}