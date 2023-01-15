import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/utility/TemperatureUnitsAdapter.dart';

class HiveService {
  static Box? _boxSettings;
  static Box? _boxWeather;

  Future<void> initFlutterAndGetBoxModels()
  async {
    await Hive.initFlutter();
    Hive.registerAdapter(TemperatureUnitsAdapter());
    await _getBoxSettings();
    await _getBoxWeather();
    return;
  }

  Future<Box?> getBoxSettings() {
    return _getBoxSettings();
  }

  Future<Box?> getBoxWeather() {
    return _getBoxWeather();
  }

  Box? getBoxSettingsAlreadyOpen() {
    return _getBoxSettingsAlreadyOpen();
  }

  Future<Box?> _getBoxSettings()
  async {
    if(_boxSettings != null) {
      return _boxSettings;
    }
    _boxSettings = await Hive.openBox(Settings.constSettingsQHiveService);
    return _boxSettings;
  }

  Future<Box?> _getBoxWeather()
  async {
    if(_boxWeather != null) {
      return _boxWeather;
    }
    _boxWeather = await Hive.openBox(Weather.constWeatherQHiveService);
    return _boxWeather;
  }

  Box? _getBoxSettingsAlreadyOpen() {
    if(_boxSettings != null) {
      return _boxSettings;
    }
    _boxSettings = Hive.box(Settings.constSettingsQHiveService);
    return _boxSettings;
  }
}