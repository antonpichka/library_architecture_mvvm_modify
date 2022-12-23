import 'package:library_arch_mvvm_modify_firebase_login/utility/TempCache.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/named_service/named_singleton/base_named_singleton.dart';

class TempCacheSingleton
    extends BaseNamedSingleton
{
  static TempCache? _tempCache;

  TempCache? get getTempCache {
    iterationForNumberOfExecutedMethodsInThisClass();
    if(_tempCache != null) {
      return _tempCache;
    }
    _tempCache = TempCache();
    return _tempCache;
  }
}