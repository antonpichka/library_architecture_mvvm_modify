class GithubCache {
  final _cache = <String, Object?>{};

  Object? get(String? term) {
    final value = _cache[term];
    if (value == null) return null;
    return value;
  }

  void set(String? term, Object result) => _cache[term!] = result;
  void remove(String? term) => _cache.remove(term);
  bool contains(String? term) => _cache.containsKey(term);
}