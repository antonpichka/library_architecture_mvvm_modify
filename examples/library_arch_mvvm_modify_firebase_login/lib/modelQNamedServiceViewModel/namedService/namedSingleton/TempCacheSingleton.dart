import 'package:library_arch_mvvm_modify_firebase_login/utility/TempCache.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/named_service/named_singleton/base_named_singleton.dart';

class TempCacheSingleton
    extends BaseNamedSingleton
{
  static TempCache? _tempCache;

  TempCache? get getTempCache {
    incrementForNumberOfExecutedMethodsInThisClass();
    if(_tempCache != null) {
      return _tempCache;
    }
    _tempCache = TempCache();
    return _tempCache;
  }
}