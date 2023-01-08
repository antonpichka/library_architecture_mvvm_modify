import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/namedService/namedSingleton/TempCacheSingleton.dart';

class TempCacheService {
  TempCacheSingleton? _tempCacheSingleton;

  TempCacheSingleton? get getTempCacheSingleton {
    if(_tempCacheSingleton != null) {
      return _tempCacheSingleton;
    }
    _tempCacheSingleton = TempCacheSingleton();
    return _tempCacheSingleton;
  }
}