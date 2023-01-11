import 'package:library_arch_mvvm_modify_github_search/utility/GithubCache.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/named_service/base_named_service.dart';

class GithubCacheService
    extends BaseNamedService
{
  static GithubCache? _githubCache;

  GithubCache? get getGithubCache {
    incrementForNumberOfExecutedMethodsInThisClass();
    if(_githubCache != null) {
      return _githubCache;
    }
    _githubCache = GithubCache();
    return _githubCache;
  }
}