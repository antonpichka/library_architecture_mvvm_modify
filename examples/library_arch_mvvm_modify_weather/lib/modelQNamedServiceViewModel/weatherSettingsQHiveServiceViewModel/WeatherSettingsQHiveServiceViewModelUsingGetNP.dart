import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherSettings/ListWeatherSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherSettings/WeatherSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/namedService/HiveService.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:meta/meta.dart';

base class WeatherSettingsQHiveServiceViewModelUsingGetNP<
        T extends WeatherSettings, Y extends ListWeatherSettings<T>>
    extends BaseModelQNamedServiceViewModel<T, Y>
    implements GetModelFromNamedServiceNPDataSource<T> {
  @protected
  final hiveService = HiveService();

  Future<T?> getWeatherSettingsFromHiveServiceNP() {
    return getModelFromNamedServiceNP();
  }

  @nonVirtual
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<T?> getModelFromNamedServiceNPDS() async {
    try {
      final boxSettings = await hiveService.getBoxSettings();
      final boxWeather = await hiveService.getBoxWeather();
      return getWeatherSettingsFromBoxSettingsAndBoxWeather(
          boxSettings, boxWeather);
    } catch (e) {
      return getWeatherSettingsFromBaseException(LocalException(
          this, EnumGuiltyForLocalException.device, e.toString()));
    }
  }

  @protected
  T? getWeatherSettingsFromBoxSettingsAndBoxWeather(
      Box? boxSettings, Box? boxWeather) {
    return WeatherSettings.success(Weather.fromBoxWeather(boxWeather!),
        Settings.fromBoxSettings(boxSettings!)) as T?;
  }

  @protected
  T? getWeatherSettingsFromBaseException(BaseException? baseException) {
    return WeatherSettings.exception(baseException!) as T?;
  }
}
