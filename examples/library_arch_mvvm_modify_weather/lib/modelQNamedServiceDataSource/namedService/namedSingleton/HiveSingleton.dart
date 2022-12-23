import 'package:hive/hive.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';

class HiveSingleton {
  static Box<Settings>? _boxSettings;

  Future<Box<T>?> getBoxSettings<T extends Settings>()
  async {
    if(_boxSettings != null) {
      return _boxSettings as Box<T>?;
    }
    _boxSettings = await Hive.openBox<T>(Settings.constSettingsQHiveService);
    return _boxSettings as Box<T>?;
  }
}