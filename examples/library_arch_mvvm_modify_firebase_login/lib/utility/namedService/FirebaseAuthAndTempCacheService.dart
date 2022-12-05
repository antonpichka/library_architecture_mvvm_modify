import 'package:library_arch_mvvm_modify_firebase_login/utility/namedSingleton/FirebaseAuthSingleton.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedSingleton/TempCacheSingleton.dart';

class FirebaseAuthAndTempCacheService {
  late final FirebaseAuthSingleton? _firebaseAuthSingleton;
  late final TempCacheSingleton? _tempCacheSingleton;

  FirebaseAuthSingleton? get getFirebaseAuthSingleton {
    if(_firebaseAuthSingleton != null) {
      return _firebaseAuthSingleton;
    }
    _firebaseAuthSingleton = FirebaseAuthSingleton();
    return _firebaseAuthSingleton;
  }

  TempCacheSingleton? get getTempCacheSingleton {
    if(_tempCacheSingleton != null) {
      return _tempCacheSingleton;
    }
    _tempCacheSingleton = TempCacheSingleton();
    return _tempCacheSingleton;
  }
}