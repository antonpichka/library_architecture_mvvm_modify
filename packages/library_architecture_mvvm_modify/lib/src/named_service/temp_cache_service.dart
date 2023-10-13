import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

final class TempCacheService {
  static final TempCacheService instance = TempCacheService._();
  final Map<String, dynamic> _tempCache;
  final Map<String, Map<String, bool>>
      _mapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData;

  TempCacheService._()
      : _tempCache = {},
        _mapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData =
            {};

  Stream<dynamic> getStreamObjectFromTempCache(
      String keyNameStream, String keyTempCache,
      [int milliseconds = 500]) async* {
    _insertToMapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData(
        keyNameStream, keyTempCache);
    while (true) {
      await Future.delayed(Duration(milliseconds: milliseconds));
      if (!_tempCache.containsKey(keyTempCache)) {
        continue;
      }
      final valueTempCache = _tempCache[keyTempCache];
      if (_mapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData[
              keyNameStream]?[keyTempCache] ??
          false) {
        continue;
      }
      _mapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData[
          keyNameStream]?[keyTempCache] = true;
      yield valueTempCache;
    }
  }

  dynamic getObjectFromTempCache(String keyTempCache) {
    if (!_tempCache.containsKey(keyTempCache)) {
      return throw LocalException(this, EnumGuiltyForLocalException.developer,
          keyTempCache, "no exists key");
    }
    return _tempCache[keyTempCache];
  }

  void insertOrUpdateObjectToTempCache(String keyTempCache, dynamic value) {
    _tempCache[keyTempCache] = value;
    _updateToMapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData(
        keyTempCache);
  }

  void
      _insertToMapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData(
          String keyNameStream, String keyTempCache) {
    if (!_mapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData
        .containsKey(keyNameStream)) {
      _mapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData[
          keyNameStream] = {keyTempCache: false};
      return;
    }
    if (_mapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData[
                keyNameStream]
            ?.containsKey(keyTempCache) ??
        false) {
      return;
    }
    _mapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData[
        keyNameStream] = {keyTempCache: false};
  }

  void
      _updateToMapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData(
          String keyTempCache) {
    for (Map<String, bool> mapKeyTempCacheAndIsHaveYouReceivedTheLatestData
        in _mapKeyNameStreamAndMapKeyTempCacheAndIsHaveYouReceivedTheLatestData
            .values) {
      if (!mapKeyTempCacheAndIsHaveYouReceivedTheLatestData
          .containsKey(keyTempCache)) {
        continue;
      }
      mapKeyTempCacheAndIsHaveYouReceivedTheLatestData[keyTempCache] = false;
    }
  }
}
