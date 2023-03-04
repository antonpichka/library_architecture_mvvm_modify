import 'package:library_arch_mvvm_modify_github_search/utility/GithubCache.dart';

class GithubCacheService {
  static GithubCache? _githubCache;

  GithubCache? get getGithubCache {
    if (_githubCache != null) {
      return _githubCache;
    }
    _githubCache = GithubCache();
    return _githubCache;
  }
}
