import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
final class TempCacheService {
  static final TempCacheService instance = TempCacheService._();

  final Map<String, dynamic> _tempCache;
  final Map<String, Map<int, void Function(dynamic event)>> _tempCacheWStreams;

  TempCacheService._()
      : _tempCache = {},
        _tempCacheWStreams = {};

  T getNamed<T>(String keyTempCache, T defaultValue) {
    if (!_tempCache.containsKey(keyTempCache)) {
      return defaultValue;
    }
    return _tempCache[keyTempCache];
  }

  void dispose(List<String> listKeyTempCache, int iteration) {
    for (final String itemKeyTempCache in listKeyTempCache) {
      if (!_tempCacheWStreams.containsKey(itemKeyTempCache)) {
        return;
      }
      _tempCacheWStreams[itemKeyTempCache]?.remove(iteration);
    }
  }

  void listenNamed(String keyTempCache, void Function(dynamic event) callback,
      int iteration) {
    if (!_tempCacheWStreams.containsKey(keyTempCache)) {
      _tempCacheWStreams[keyTempCache] = <int, void Function(dynamic event)>{};
      _tempCacheWStreams[keyTempCache]?[iteration] = callback;
      return;
    }
    if ((_tempCacheWStreams[keyTempCache] ?? {}).containsKey(iteration)) {
      throw LocalException(
          this,
          EnumGuilty.developer,
          "{ $keyTempCache---$iteration }",
          "Under such a key and iteration there already exists a listener: { $keyTempCache---$iteration }");
    }
    _tempCacheWStreams[keyTempCache]?[iteration] = callback;
  }

  void update(String keyTempCache, dynamic value) {
    _tempCache[keyTempCache] = value;
  }

  void updateWNotify(String keyTempCache, dynamic value) {
    update(keyTempCache, value);
    if (!_tempCacheWStreams.containsKey(keyTempCache)) {
      return;
    }
    for (final MapEntry<int, void Function(dynamic event)> entry
        in _tempCacheWStreams[keyTempCache]?.entries ?? []) {
      entry.value(value);
    }
  }

  void delete(String keyTempCache) {
    _tempCache.remove(keyTempCache);
    _tempCacheWStreams.remove(keyTempCache);
  }
}
