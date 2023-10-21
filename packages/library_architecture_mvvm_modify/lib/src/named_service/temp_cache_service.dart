import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

final class TempCacheService {
  static final TempCacheService instance = TempCacheService._();
  final Map<String, dynamic> _tempCache;
  final Map<String, Map<String, bool>>
      _nameStreamWTempCacheWIsHaveYouReceivedTheLatestData;

  TempCacheService._()
      : _tempCache = {},
        _nameStreamWTempCacheWIsHaveYouReceivedTheLatestData =
            {};

  Stream<dynamic> getStreamObjectFromKeyNameStreamAndKeyTempCacheAndMillisecondsParametersTempCacheAndNameStreamWTempCacheWIsHaveYouReceivedTheLatestData(
      String keyNameStream, String keyTempCache,
      [int milliseconds = 500]) async* {
    _insertFromKeyNameStreamAndKeyTempCacheParameterNameStreamWTempCacheWIsHaveYouReceivedTheLatestData(
        keyNameStream, keyTempCache);
    while (true) {
      await Future.delayed(Duration(milliseconds: milliseconds));
      if (!_tempCache.containsKey(keyTempCache)) {
        continue;
      }
      final valueTempCache = _tempCache[keyTempCache];
      if (_nameStreamWTempCacheWIsHaveYouReceivedTheLatestData[
              keyNameStream]?[keyTempCache] ??
          false) {
        continue;
      }
      _nameStreamWTempCacheWIsHaveYouReceivedTheLatestData[
          keyNameStream]?[keyTempCache] = true;
      yield valueTempCache;
    }
  }

  dynamic getObjectFromKeyTempCacheParameterTempCache(String keyTempCache) {
    if (!_tempCache.containsKey(keyTempCache)) {
      return throw LocalException(this, EnumGuiltyForLocalException.developer,
          keyTempCache, "no exists key");
    }
    return _tempCache[keyTempCache];
  }

  void updateObjectFromKeyTempCacheAndValueParameterTempCache(String keyTempCache, dynamic value) {
    _tempCache[keyTempCache] = value;
    _updateFromKeyTempCacheParameterNameStreamWTempCacheWIsHaveYouReceivedTheLatestData(
        keyTempCache);
  }

  void
      _insertFromKeyNameStreamAndKeyTempCacheParameterNameStreamWTempCacheWIsHaveYouReceivedTheLatestData(
          String keyNameStream, String keyTempCache) {
    if (!_nameStreamWTempCacheWIsHaveYouReceivedTheLatestData
        .containsKey(keyNameStream)) {
      _nameStreamWTempCacheWIsHaveYouReceivedTheLatestData[
          keyNameStream] = {keyTempCache: false};
      return;
    }
    if (_nameStreamWTempCacheWIsHaveYouReceivedTheLatestData[
                keyNameStream]
            ?.containsKey(keyTempCache) ??
        false) {
      return;
    }
    _nameStreamWTempCacheWIsHaveYouReceivedTheLatestData[
        keyNameStream] = {keyTempCache: false};
  }

  void
      _updateFromKeyTempCacheParameterNameStreamWTempCacheWIsHaveYouReceivedTheLatestData(
          String keyTempCache) {
    for (Map<String, bool> tempCacheWIsHaveYouReceivedTheLatestData
        in _nameStreamWTempCacheWIsHaveYouReceivedTheLatestData
            .values) {
      if (!tempCacheWIsHaveYouReceivedTheLatestData
          .containsKey(keyTempCache)) {
        continue;
      }
      tempCacheWIsHaveYouReceivedTheLatestData[keyTempCache] = false;
    }
  }
}
