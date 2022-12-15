class GithubCache {
  final _cache = <String, Object?>{};

  T? get<T extends Object>(String? term) {
    final value = _cache[term];
    if (value is T) return value;
    return null;
  }

  void set<T extends Object>(String? term, T result) => _cache[term!] = result;
  void remove(String? term) => _cache.remove(term);
  bool contains(String? term) => _cache.containsKey(term);
}