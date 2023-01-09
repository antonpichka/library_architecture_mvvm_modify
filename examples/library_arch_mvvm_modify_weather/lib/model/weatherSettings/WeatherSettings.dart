import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/utility/Utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class WeatherSettings
    extends BaseModel
{
  Weather? weather;
  Settings? settings;

  WeatherSettings.success(this.weather,this.settings) : super.success("");
  WeatherSettings.exception(super.exception) : super.exception();

  static WeatherSettings get getWeatherAndSettingsForSuccess => WeatherSettings.success(Weather.getWeatherForSuccess,Settings.getSettingsForSuccess);

  Weather? get getOneParametersNamedForWeatherAndSettingsQHiveServiceDataSourceUsingParameterWeatherAndSettings => weather;
  Settings? get getTwoParametersNamedForWeatherAndSettingsQHiveServiceDataSourceUsingParameterWeatherAndSettings => settings;

  set setOneParametersNamedForWeatherAndSettingsQHiveServiceDataSourceUsingGetNP(Weather weather) {
    exceptionController = weather.exceptionController;
  }

  set setTwoParametersNamedForWeatherAndSettingsQHiveServiceDataSourceUsingGetNP(Settings settings) {
    exceptionController = settings.exceptionController;
  }

  void setThreeParametersNamedForWeatherAndSettingsQHiveServiceDataSourceUsingGetNP(
      Weather weather,
      Settings settings)
  {
    this.weather = weather;
    this.settings = settings;
  }

  set setOneParametersNamedForWeatherAndSettingsQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi(Weather weather) {
    exceptionController = weather.exceptionController;
  }

  set setTwoParametersNamedForWeatherAndSettingsQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi(WeatherSettings weatherAndSettings) {
    exceptionController = weatherAndSettings.exceptionController;
  }

  set setThreeParametersNamedForWeatherAndSettingsQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi(Weather weather) {
    this.weather = weather;
    settings?.color = this.weather
        ?.getOneParametersNamedForWeatherAndSettingsWhereSetThreeParametersNamedForWeatherAndSettingsQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi ??  constDefaultColor.value.toString();
  }

  set setFourParametersNamedForWeatherAndSettingsQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi(BoolTypeParameter boolTypeParameter) {
    exceptionController = boolTypeParameter.exceptionController;
  }
}