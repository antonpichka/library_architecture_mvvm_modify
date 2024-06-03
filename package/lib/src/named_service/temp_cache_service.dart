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

  /// It is in the map structure that the data is stored o about callbacks
  /// Where to use ? - here
  final Map<String, List<void Function(dynamic event)>> _tempCacheWListAction;

  /// Initialize the parameters '_tempCache','_tempCacheWStreamController'
  /// Where to use ? - here
  TempCacheService._()
      : _tempCache = {},
        _tempCacheWListAction = {};

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
    final tempCacheWListAction = instance._tempCacheWListAction;
    if (!tempCacheWListAction.containsKey(keyTempCache)) {
      return;
    }
    final listAction = tempCacheWListAction[keyTempCache];
    listAction?.clear();
  }

  /// closeStreams - close the streams
  /// FromListKeyTempCache - close the streams using the list keys
  /// ParameterInstance - use a static instances
  /// Where to use ? - anywhere (just not in models)
  static void closeStreamsFromListKeyTempCacheParameterInstance(
      List<String> listKeyTempCache) {
    final tempCacheWListAction = instance._tempCacheWListAction;
    for (String keyTempCache in listKeyTempCache) {
      if (!tempCacheWListAction.containsKey(keyTempCache)) {
        continue;
      }
      final listAction = tempCacheWListAction[keyTempCache];
      listAction?.clear();
    }
  }

  /// closeStreams - close all streams
  /// ParameterInstance - use a static instances
  /// Where to use ? - anywhere (just not in models)
  static void closeStreamsParameterInstance() {
    final tempCacheWListAction = instance._tempCacheWListAction;
    tempCacheWListAction.forEach((key, value) {
      value.clear();
    });
  }

  /// get - get object
  /// FromKeyTempCache - get the key from the temporary cache to get data from the temporary cache
  /// ParameterTempCache - getting data from the temporary cache
  /// Where to use ? - use in 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' class
  dynamic getFromKeyTempCacheParameterTempCache(String keyTempCache) {
    if (!_tempCache.containsKey(keyTempCache)) {
      return throw LocalException(
          this, EnumGuilty.developer, keyTempCache, "No exists key");
    }
    return _tempCache[keyTempCache];
  }

  /// listenStream - register a listener
  /// FromKeyTempCacheAndCallback - we get the key from the callback and the callback itself
  /// ParameterOne - add a new callback to '_tempCacheWListAction'
  /// Where to use ? - use in 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' class
  void listenStreamFromKeyTempCacheAndCallbackParameterOne(
      String keyTempCache, void Function(dynamic event) callback) {
    final tempCacheWListAction = _tempCacheWListAction;
    if (!tempCacheWListAction.containsKey(keyTempCache)) {
      tempCacheWListAction[keyTempCache] = List.empty(growable: true);
      tempCacheWListAction[keyTempCache]?.add(callback);
      return;
    }
    tempCacheWListAction[keyTempCache]?.add(callback);
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
  /// ParameterOne - temporary cache update and notify stream (if it exists and we listen)
  /// Where to use ? - use in 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' class
  void
      updateWhereStreamNotificationIsPossibleFromKeyTempCacheAndValueParameterOne(
          String keyTempCache, dynamic value) {
    updateFromKeyTempCacheAndValueParameterTempCache(keyTempCache, value);
    final tempCacheWListAction = _tempCacheWListAction;
    if (!tempCacheWListAction.containsKey(keyTempCache)) {
      return;
    }
    final listAction =
        tempCacheWListAction[keyTempCache] ?? List.empty(growable: true);
    for (final void Function(dynamic event) itemAction in listAction) {
      itemAction(value);
    }
  }

  /// delete - delete an object in the temporary cache
  /// FromKeyTempCache - get the key to delete the data in the temporary cache
  /// ParameterTempCache - removal from temporary cache
  /// Where to use ? - use in 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' class
  void deleteFromKeyTempCacheParameterTempCache(String keyTempCache) {
    _tempCache.remove(keyTempCache);
  }
}
