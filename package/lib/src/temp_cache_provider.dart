import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// An exception
/// 'LAMM' laws don't apply here
@immutable
final class TempCacheProvider {
  final TempCacheService _tempCacheService;
  final int _iteration;

  TempCacheProvider()
      : _tempCacheService = TempCacheService.instance,
        _iteration = IterationService.instance.newValueParameterIteration();

  T getNamed<T>(String keyTempCache, dynamic defaultValue) {
    return _tempCacheService
        .getFromKeyTempCacheAndDefaultValueParameterTempCache(
            keyTempCache, defaultValue);
  }

  void dispose(List<String> listKeyTempCache) {
    if (listKeyTempCache.isEmpty) {
      return;
    }
    for (final String itemKeyTempCache in listKeyTempCache) {
      _tempCacheService.disposeStreamFromKeyTempCacheAndIterationParameterOne(
          itemKeyTempCache, _iteration);
    }
  }

  void listenNamed(String keyTempCache, void Function(dynamic event) callback) {
    _tempCacheService
        .listenStreamFromKeyTempCacheAndIterationAndCallbackParameterOne(
            keyTempCache, _iteration, callback);
  }

  void update(String keyTempCache, dynamic value) {
    _tempCacheService.updateFromKeyTempCacheAndValueParameterTempCache(
        keyTempCache, value);
  }

  void updateWNotify(String keyTempCache, dynamic value) {
    _tempCacheService.updateWNotificationFromKeyTempCacheAndValueParameterOne(
        keyTempCache, value);
  }

  void delete(String keyTempCache) {
    _tempCacheService.deleteFromKeyTempCacheParameterTempCache(keyTempCache);
  }
}
