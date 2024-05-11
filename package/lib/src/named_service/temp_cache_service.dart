import 'dart:async';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// Temporary data storage
/// Where to use ? - use in 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' class
@immutable
final class TempCacheService {
  /// Singleton
  /// Where to use ? - use in 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' class
  static final TempCacheService instance = TempCacheService._();

  /// It is in the map structure that the data is stored
  /// Where to use ? - here
  final Map<String, dynamic> _tempCache;

  /// It is in the map structure that the data is stored (streamController)
  /// Where to use ? - here
  final Map<String, StreamController<dynamic>> _tempCacheWStreamController;

  /// Initialize the parameters '_tempCache','_tempCacheWStreamController'
  /// Where to use ? - here
  TempCacheService._()
      : _tempCache = {},
        _tempCacheWStreamController = {};

  /// clearTempCache - clear temporary cache
  /// ParameterInstance - use a static instances
  /// Where to use ? - anywhere (just not in models)
  static void clearTempCacheParameterInstance() {
    final tempCache = instance._tempCache;
    tempCache.clear();
  }

  /// closeStream - close the stream
  /// FromKeyTempCache - close the stream using the key
  /// ParameterInstance - use a static instances
  /// Where to use ? - anywhere (just not in models)
  static void closeStreamFromKeyTempCacheParameterInstance(
      String keyTempCache) {
    final tempCacheWStreamController = instance._tempCacheWStreamController;
    if (!tempCacheWStreamController.containsKey(keyTempCache)) {
      return;
    }
    tempCacheWStreamController[keyTempCache]?.close();
  }

  /// closeStreams - close the streams
  /// FromListKeyTempCache - close the streams using the list keys
  /// ParameterInstance - use a static instances
  /// Where to use ? - anywhere (just not in models)
  static void closeStreamsFromListKeyTempCacheParameterInstance(
      List<String> listKeyTempCache) {
    final tempCacheWStreamController = instance._tempCacheWStreamController;
    for (String keyTempCache in listKeyTempCache) {
      if (!tempCacheWStreamController.containsKey(keyTempCache)) {
        continue;
      }
      tempCacheWStreamController[keyTempCache]?.close();
    }
  }

  /// closeStreams - close all streams
  /// ParameterInstance - use a static instances
  /// Where to use ? - anywhere (just not in models)
  static void closeStreamsParameterInstance() {
    final tempCacheWStreamController = instance._tempCacheWStreamController;
    tempCacheWStreamController.forEach((key, value) {
      value.close();
    });
  }

  /// getStream - get stream Object
  /// FromKeyTempCache - we get the temporary cache key
  /// ParameterOne - the parameter that gives us the stream
  /// Where to use ? - use in 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' class
  Stream<dynamic> getStreamFromKeyTempCacheParameterOne(String keyTempCache) {
    if (!_tempCacheWStreamController.containsKey(keyTempCache)) {
      _tempCacheWStreamController[keyTempCache] =
          StreamController<dynamic>.broadcast();
      return _tempCacheWStreamController[keyTempCache]!.stream;
    }
    return _tempCacheWStreamController[keyTempCache]!.stream;
  }

  /// get - get object
  /// FromKeyTempCache - get the key from the temporary cache to get data from the temporary cache
  /// ParameterTempCache - getting data from the temporary cache
  /// Where to use ? - use in 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' class
  dynamic getFromKeyTempCacheParameterTempCache(String keyTempCache) {
    if (!_tempCache.containsKey(keyTempCache)) {
      return throw LocalException(
          this, EnumGuilty.developer, keyTempCache, "no exists key");
    }
    return _tempCache[keyTempCache];
  }

  /// update - update an object in the temporary cache
  /// FromKeyTempCacheAndValue - get the key and value to update the data in the temporary cache
  /// ParameterTempCache - temporary cache update
  /// Where to use ? - use in 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' class
  void updateFromKeyTempCacheAndValueParameterTempCache(
      String keyTempCache, dynamic value) {
    _tempCache[keyTempCache] = value;
  }

  /// update - update an object in the temporary cache
  /// WhereStreamNotificationIsPossible - notify stream (if it exists and we listen)
  /// FromKeyTempCacheAndValue - get the key and value to update the data in the temporary cache
  /// ParametersTwo - temporary cache update and notify stream (if it exists and we listen)
  /// Where to use ? - use in 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' class
  void
      updateWhereStreamNotificationIsPossibleFromKeyTempCacheAndValueParametersTwo(
          String keyTempCache, dynamic value) {
    updateFromKeyTempCacheAndValueParameterTempCache(keyTempCache, value);
    if (!_tempCacheWStreamController.containsKey(keyTempCache)) {
      return;
    }
    if (!(_tempCacheWStreamController[keyTempCache]?.hasListener ?? false)) {
      return;
    }
    if (_tempCacheWStreamController[keyTempCache]?.isClosed ?? false) {
      return;
    }
    _tempCacheWStreamController[keyTempCache]?.sink.add(value);
  }

  /// delete - delete an object in the temporary cache
  /// FromKeyTempCache - get the key to delete the data in the temporary cache
  /// ParameterTempCache - removal from temporary cache
  /// Where to use ? - use in 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' class
  void deleteFromKeyTempCacheParameterTempCache(String keyTempCache) {
    _tempCache.remove(keyTempCache);
  }
}
