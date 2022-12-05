import 'package:library_arch_mvvm_modify_firebase_login/utility/namedSingleton/TempCacheSingleton.dart';

class TempCacheService {
  late final TempCacheSingleton? _tempCacheSingleton;

  TempCacheSingleton? get getTempCacheSingleton {
    if(_tempCacheSingleton != null) {
      return _tempCacheSingleton;
    }
    _tempCacheSingleton = TempCacheSingleton();
    return _tempCacheSingleton;
  }
}