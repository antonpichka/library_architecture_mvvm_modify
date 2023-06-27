final class TempCache {
  final Map<String, Object?> _mapStringAndObject;

  TempCache() : _mapStringAndObject = <String, Object>{};

  Object? read(String key) {
    final value = _mapStringAndObject[key];
    if (value == null) return null;
    return value;
  }

  void write(String key, Object? value) {
    _mapStringAndObject[key] = value;
  }

  void delete(String key) {
    _mapStringAndObject.remove(key);
  }
}
