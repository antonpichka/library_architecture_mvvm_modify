import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/named_service/base_named_service.dart';

class HiveService
    extends BaseNamedService
{
  static Box? _boxSettings;
  static Box? _boxWeather;

  Future<void> initFlutterAndGetBoxModels()
  async {
    incrementForNumberOfExecutedMethodsInThisClass();
    await Hive.initFlutter();
    await _getBoxSettings();
    await _getBoxWeather();
    return;
  }

  Future<Box?> getBoxSettings() {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _getBoxSettings();
  }

  Future<Box?> getBoxWeather() {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _getBoxWeather();
  }

  Box? getBoxSettingsAlreadyOpen() {
    incrementForNumberOfExecutedMethodsInThisClass();
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