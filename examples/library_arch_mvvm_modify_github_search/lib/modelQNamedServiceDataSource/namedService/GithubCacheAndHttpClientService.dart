import 'package:library_arch_mvvm_modify_github_search/modelQNamedServiceDataSource/namedService/namedSingleton/GithubCacheSingleton.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQNamedServiceDataSource/namedService/namedSingleton/HttpClientSingleton.dart';

class GithubCacheAndHttpClientService {
  GithubCacheSingleton? _githubCacheSingleton;
  HttpClientSingleton? _httpClientSingleton;

  GithubCacheSingleton? get getGithubCacheSingleton {
    if(_githubCacheSingleton != null) {
      return _githubCacheSingleton;
    }
    _githubCacheSingleton = GithubCacheSingleton();
    return _githubCacheSingleton;
  }

  HttpClientSingleton? get getHttpClientSingleton {
    if(_httpClientSingleton != null) {
      return _httpClientSingleton;
    }
    _httpClientSingleton = HttpClientSingleton();
    return _httpClientSingleton;
  }
}