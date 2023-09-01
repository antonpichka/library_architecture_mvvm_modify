import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

final class TempCacheService {
  static final TempCacheService instance = TempCacheService._();
  final Map<String,dynamic> _preTempCache;
  final Map<String,dynamic> _tempCache;

  TempCacheService._() :
        _preTempCache = {},
        _tempCache = {};

  Stream<dynamic> getStreamObjectFromTempCache(String key,[int milliseconds = 500])
  async* {
    while(true) {
      await Future.delayed(Duration(milliseconds: milliseconds));
      if(!_preTempCache.containsKey(key)) {
        continue;
      }
      final preValue = _preTempCache[key];
      if(_tempCache.containsKey(key)) {
        continue;
      }
      _tempCache[key] = preValue;
      yield preValue;
    }
  }

  dynamic getObjectFromTempCache(String key) {
    if(!_preTempCache.containsKey(key)) {
      return throw LocalException(this, EnumGuiltyForLocalException.developer,key,"no exists key");
    }
    return _preTempCache[key];
  }

  void insertOrUpdateObjectToTempCache(String key,dynamic value) {
    if(_tempCache.containsKey(key)) {
      _tempCache.remove(key);
      _preTempCache[key] = value;
      return;
    }
    _preTempCache[key] = value;
  }

  void deleteObjectToTempCache(String key) {
    _preTempCache.remove(key);
    _tempCache.remove(key);
  }
}