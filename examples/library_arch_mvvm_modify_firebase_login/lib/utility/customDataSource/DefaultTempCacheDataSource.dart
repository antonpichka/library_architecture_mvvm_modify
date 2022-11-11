import 'package:library_arch_mvvm_modify_firebase_login/utility/TempCache.dart';

class DefaultTempCacheDataSource {
  static TempCache _tempCache;

  TempCache get getTempCache {
    if(_tempCache != null) {
      return _tempCache;
    }
    _tempCache = TempCache();
    return _tempCache;
  }
}