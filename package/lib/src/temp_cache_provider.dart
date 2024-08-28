import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
final class TempCacheProvider {
  final TempCacheService _tempCacheService;
  final int _iteration;

  TempCacheProvider()
      : _tempCacheService = TempCacheService.instance,
        _iteration = IterationService.instance.newValueParameterIteration();

  T getNamed<T>(String keyTempCache, dynamic defaultValue) {
    return _tempCacheService.getNamed<T>(keyTempCache, defaultValue);
  }

  void dispose(List<String> listKeyTempCache) {
    return _tempCacheService.dispose(listKeyTempCache, _iteration);
  }

  void listenNamed(String keyTempCache, void Function(dynamic event) callback) {
    _tempCacheService.listenNamed(keyTempCache, callback, _iteration);
  }

  void update(String keyTempCache, dynamic value) {
    _tempCacheService.update(keyTempCache, value);
  }

  void updateWNotify(String keyTempCache, dynamic value) {
    _tempCacheService.updateWNotify(keyTempCache, value);
  }

  void delete(String keyTempCache) {
    _tempCacheService.delete(keyTempCache);
  }
}
