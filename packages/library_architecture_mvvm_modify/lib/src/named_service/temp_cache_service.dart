import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

final class TempCacheService {
  static final TempCacheService instance = TempCacheService._();
  final Map<String, dynamic> _preTempCache;
  final Map<String, dynamic> _tempCache;
  final Map<String,Map<String,bool>> _mapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData;

  TempCacheService._()
      : _preTempCache = {},
        _tempCache = {},
        _mapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData = {};

  Stream<dynamic> getStreamObjectFromTempCache(String keyNameStream,String keyTempCache,
      [int milliseconds = 500]) async* {
    _insertToMapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData(keyNameStream,keyTempCache);
    while (true) {
      await Future.delayed(Duration(milliseconds: milliseconds));
      if (!_preTempCache.containsKey(keyTempCache)) {
        continue;
      }
      final preValueTempCache = _preTempCache[keyTempCache];
      if(_tempCache.containsKey(keyTempCache) && (_mapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData[keyNameStream]?[keyTempCache] ?? false)) {
        continue;
      }
      _tempCache[keyTempCache] = preValueTempCache;
      _mapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData[keyNameStream]?[keyTempCache] = true;
      yield preValueTempCache;
    }
  }

  dynamic getObjectFromTempCache(String keyTempCache) {
    if (!_preTempCache.containsKey(keyTempCache)) {
      return throw LocalException(
          this, EnumGuiltyForLocalException.developer, keyTempCache, "no exists key");
    }
    return _preTempCache[keyTempCache];
  }

  void insertOrUpdateObjectToTempCache(String keyTempCache, dynamic value) {
    if (_tempCache.containsKey(keyTempCache)) {
      _tempCache.remove(keyTempCache);
      _preTempCache[keyTempCache] = value;
      _updateToMapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData(keyTempCache);
      return;
    }
    _preTempCache[keyTempCache] = value;
    _updateToMapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData(keyTempCache);
  }

  void deleteObjectToTempCache(String keyTempCache) {
    _preTempCache.remove(keyTempCache);
    _tempCache.remove(keyTempCache);
  }

  void _insertToMapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData(String keyNameStream,String keyTempCache) {
    if(!_mapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData.containsKey(keyNameStream)) {
      _mapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData[keyNameStream] = {keyTempCache : false};
      return;
    }
    if(_mapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData[keyNameStream]?.containsKey(keyTempCache) ?? false) {
      return;
    }
    _mapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData[keyNameStream] = {keyTempCache : false};
  }

  void _updateToMapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData(String keyTempCache) {
    for(Map<String,bool> mapKeyTempCacheAndIsHaveYouReceivedTheLatestData in _mapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData.values) {
      if(!mapKeyTempCacheAndIsHaveYouReceivedTheLatestData.containsKey(keyTempCache)) {
        continue;
      }
      mapKeyTempCacheAndIsHaveYouReceivedTheLatestData[keyTempCache] = false;
    }
  }
}
