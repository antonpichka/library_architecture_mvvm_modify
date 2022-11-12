import 'package:library_arch_mvvm_modify_firebase_login/utility/TempCache.dart';

class TempCacheService {
  static TempCache _tempCache;

  static TempCache get getTempCache {
    if(_tempCache != null) {
      return _tempCache;
    }
    _tempCache = TempCache();
    return _tempCache;
  }
}