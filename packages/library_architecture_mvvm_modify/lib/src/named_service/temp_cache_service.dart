import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

/// Temporary data storage
/// Where to use ? - use in 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' class
final class TempCacheService {
  /// Singleton
  /// Where to use ? - use in 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' class
  static final TempCacheService instance = TempCacheService._();

  /// It is in the map structure that the data is stored
  /// Where to use ? - here
  final Map<String, dynamic> _tempCache;

  /// For each stream name, a temporary cache key is stored and whether the stream received the latest data
  /// Where to use ? - here
  final Map<String, Map<String, bool>>
      _nameStreamWTempCacheWIsHaveYouReceivedTheLatestData;

  /// Initialize the parameters 'tempCache','nameStreamWTempCacheWIsHaveYouReceivedTheLatestData'
  /// Where to use ? - here
  TempCacheService._()
      : _tempCache = {},
        _nameStreamWTempCacheWIsHaveYouReceivedTheLatestData = {};

  /// getStreamObject - get stream Object
  /// FromKeyNameStreamAndKeyTempCacheAndMilliseconds - we get the stream name key and the temporary cache key and milliseconds after how long to update the reading
  /// ParametersTempCacheAndNameStreamWTempCacheWIsHaveYouReceivedTheLatestData - parameters that retrieve data and check whether it was delivered to the stream being listened to
  /// Where to use ? - use in 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' class
  Stream<dynamic>
      getStreamObjectFromKeyNameStreamAndKeyTempCacheAndMillisecondsParametersTempCacheAndNameStreamWTempCacheWIsHaveYouReceivedTheLatestData(
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
      if (_nameStreamWTempCacheWIsHaveYouReceivedTheLatestData[keyNameStream]
              ?[keyTempCache] ??
          false) {
        continue;
      }
      _nameStreamWTempCacheWIsHaveYouReceivedTheLatestData[keyNameStream]
          ?[keyTempCache] = true;
      yield valueTempCache;
    }
  }

  /// getObject - get object
  /// FromKeyTempCache - get the key from the temporary cache to get data from the temporary cache
  /// ParameterTempCache - getting data from the temporary cache
  /// Where to use ? - use in 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' class
  dynamic getObjectFromKeyTempCacheParameterTempCache(String keyTempCache) {
    if (!_tempCache.containsKey(keyTempCache)) {
      return throw LocalException(
          this, EnumGuilty.developer, keyTempCache, "no exists key");
    }
    return _tempCache[keyTempCache];
  }

  /// updateObject - update an object in the temporary cache
  /// FromKeyTempCacheAndValue - get the key and value to update the data in the temporary cache
  /// ParameterTempCache - getting data from the temporary cache
  /// Where to use ? - use in 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' class
  void updateObjectFromKeyTempCacheAndValueParameterTempCache(
      String keyTempCache, dynamic value) {
    _tempCache[keyTempCache] = value;
    _updateFromKeyTempCacheParameterNameStreamWTempCacheWIsHaveYouReceivedTheLatestData(
        keyTempCache);
  }

  void
      _insertFromKeyNameStreamAndKeyTempCacheParameterNameStreamWTempCacheWIsHaveYouReceivedTheLatestData(
          String keyNameStream, String keyTempCache) {
    if (!_nameStreamWTempCacheWIsHaveYouReceivedTheLatestData
        .containsKey(keyNameStream)) {
      _nameStreamWTempCacheWIsHaveYouReceivedTheLatestData[keyNameStream] = {
        keyTempCache: false
      };
      return;
    }
    if (_nameStreamWTempCacheWIsHaveYouReceivedTheLatestData[keyNameStream]
            ?.containsKey(keyTempCache) ??
        false) {
      return;
    }
    _nameStreamWTempCacheWIsHaveYouReceivedTheLatestData[keyNameStream] = {
      keyTempCache: false
    };
  }

  void
      _updateFromKeyTempCacheParameterNameStreamWTempCacheWIsHaveYouReceivedTheLatestData(
          String keyTempCache) {
    for (Map<String, bool> tempCacheWIsHaveYouReceivedTheLatestData
        in _nameStreamWTempCacheWIsHaveYouReceivedTheLatestData.values) {
      if (!tempCacheWIsHaveYouReceivedTheLatestData.containsKey(keyTempCache)) {
        continue;
      }
      tempCacheWIsHaveYouReceivedTheLatestData[keyTempCache] = false;
    }
  }
}
