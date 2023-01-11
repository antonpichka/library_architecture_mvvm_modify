import 'package:library_arch_mvvm_modify_firebase_login/utility/TempCache.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/named_service/base_named_service.dart';

class TempCacheService
    extends BaseNamedService
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