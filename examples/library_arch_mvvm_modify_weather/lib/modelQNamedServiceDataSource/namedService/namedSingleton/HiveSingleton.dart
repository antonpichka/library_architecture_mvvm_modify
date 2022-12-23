import 'package:hive/hive.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/named_service/named_singleton/base_named_singleton.dart';

class HiveSingleton
    extends BaseNamedSingleton
{
  static Box<Settings>? _boxSettings;

  Future<Box<T>?> getBoxSettings<T extends Settings>()
  async {
    incrementForNumberOfExecutedMethodsInThisClass();
    if(_boxSettings != null) {
      return _boxSettings as Box<T>?;
    }
    _boxSettings = await Hive.openBox<T>(Settings.constSettingsQHiveService);
    return _boxSettings as Box<T>?;
  }
}