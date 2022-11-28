class TempCache {
  final Map<String, Object?> _mapStringAndObject;

  TempCache() : _mapStringAndObject = <String,Object>{};

  void write<T extends Object>(String key, T? value) {
    _mapStringAndObject[key] = value;
  }

  T? read<T extends Object>(String key) {
    final value = _mapStringAndObject[key];
    if (value is T) return value;
    return null;
  }

  void delete(String key) {
    _mapStringAndObject.remove(key);
  }
}