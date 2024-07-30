import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// Temporary data storage
/// Where to use ? - use in 'ModelRepository' class
@immutable
final class TempCacheService {
  /// Singleton
  /// Where to use ? - use in 'ModelRepository' class
  static final TempCacheService instance = TempCacheService._();

  /// It is in the map structure that the data is stored
  /// Where to use ? - here
  final Map<String, dynamic> _tempCache;

  /// It is in the map structure that the data is stored o about callbacks
  /// Where to use ? - here
  final Map<String, Map<int, void Function(dynamic event)>> _tempCacheWStreams;

  /// Initialize the parameters '_tempCache','_tempCacheWStreamController'
  /// Where to use ? - here
  TempCacheService._()
      : _tempCache = {},
        _tempCacheWStreams = {};

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
    final tempCacheWStreams = instance._tempCacheWStreams;
    if (!tempCacheWStreams.containsKey(keyTempCache)) {
      return;
    }
    final streams = tempCacheWStreams[keyTempCache];
    streams?.clear();
  }

  /// closeStreams - close the streams
  /// FromListKeyTempCache - close the streams using the list keys
  /// ParameterInstance - use a static instances
  /// Where to use ? - anywhere (just not in models)
  static void closeStreamsFromListKeyTempCacheParameterInstance(
      List<String> listKeyTempCache) {
    final tempCacheWStreams = instance._tempCacheWStreams;
    for (String keyTempCache in listKeyTempCache) {
      if (!tempCacheWStreams.containsKey(keyTempCache)) {
        continue;
      }
      final streams = tempCacheWStreams[keyTempCache];
      streams?.clear();
    }
  }

  /// closeStreams - close all streams
  /// ParameterInstance - use a static instances
  /// Where to use ? - anywhere (just not in models)
  static void closeStreamsParameterInstance() {
    final tempCacheWStreams = instance._tempCacheWStreams;
    tempCacheWStreams.forEach((key, value) {
      value.clear();
    });
  }

  /// get - get object
  /// FromKeyTempCacheAndDefaultValue - get the key from the temporary cache to get data from the temporary cache
  /// ParameterTempCache - getting data from the temporary cache
  /// Where to use ? - use in 'ModelRepository' class
  dynamic getFromKeyTempCacheAndDefaultValueParameterTempCache(
      String keyTempCache, dynamic defaultValue) {
    if (!_tempCache.containsKey(keyTempCache)) {
      return defaultValue;
    }
    return _tempCache[keyTempCache];
  }

  /// listenStream - register a listener
  /// FromKeyTempCacheAndCallback - we get the key from the callback and the callback itself
  /// ParameterOne - add a new callback to '_tempCacheWListAction'
  /// Where to use ? - use in 'ModelRepository' class
  void listenStreamFromKeyTempCacheAndCallbackParameterOne(
      String keyTempCache, void Function(dynamic event) callback) {
    listenStreamFromKeyTempCacheAndIterationAndCallbackParameterOne(
        keyTempCache,
        IterationService.instance.newValueParameterIteration(),
        callback);
  }

  void listenStreamFromKeyTempCacheAndIterationAndCallbackParameterOne(
      String keyTempCache,
      int iteration,
      void Function(dynamic event) callback) {
    final tempCacheWStreams = _tempCacheWStreams;
    if (!tempCacheWStreams.containsKey(keyTempCache)) {
      tempCacheWStreams[keyTempCache] = <int, void Function(dynamic event)>{};
      tempCacheWStreams[keyTempCache]?[iteration] = callback;
      return;
    }
    final streams = tempCacheWStreams[keyTempCache] ?? {};
    if (streams.containsKey(iteration)) {
      throw LocalException(
          this,
          EnumGuilty.developer,
          "{ $keyTempCache---$iteration }",
          "Under such a key and iteration there already exists a listener: { $keyTempCache---$iteration }");
    }
    tempCacheWStreams[keyTempCache]?[iteration] = callback;
  }

  /// update - update an object in the temporary cache
  /// FromKeyTempCacheAndValue - get the key and value to update the data in the temporary cache
  /// ParameterTempCache - temporary cache update
  /// Where to use ? - use in 'ModelRepository' class
  void updateFromKeyTempCacheAndValueParameterTempCache(
      String keyTempCache, dynamic value) {
    _tempCache[keyTempCache] = value;
  }

  /// updateWNotification - update an object in the temporary cache and notify stream (if it exists and we listen)
  /// FromKeyTempCacheAndValue - get the key and value to update the data in the temporary cache
  /// ParameterOne - temporary cache update and notify stream (if it exists and we listen)
  /// Where to use ? - use in 'ModelRepository' class
  void updateWNotificationFromKeyTempCacheAndValueParameterOne(
      String keyTempCache, dynamic value) {
    updateFromKeyTempCacheAndValueParameterTempCache(keyTempCache, value);
    final tempCacheWStreams = _tempCacheWStreams;
    if (!tempCacheWStreams.containsKey(keyTempCache)) {
      return;
    }
    final streams = tempCacheWStreams[keyTempCache];
    for (final MapEntry<int, void Function(dynamic event)> entry
        in streams!.entries) {
      entry.value(value);
    }
  }

  void disposeStreamFromKeyTempCacheAndIterationParameterOne(
      String keyTempCache, int iteration) {
    final tempCacheWStreams = _tempCacheWStreams;
    if (!tempCacheWStreams.containsKey(keyTempCache)) {
      return;
    }
    final streams = tempCacheWStreams[keyTempCache];
    streams?.remove(iteration);
  }

  /// delete - delete an object in the temporary cache
  /// FromKeyTempCache - get the key to delete the data in the temporary cache
  /// ParameterTempCache - removal from temporary cache
  /// Where to use ? - use in 'ModelRepository' class
  void deleteFromKeyTempCacheParameterTempCache(String keyTempCache) {
    _tempCache.remove(keyTempCache);
  }
}
