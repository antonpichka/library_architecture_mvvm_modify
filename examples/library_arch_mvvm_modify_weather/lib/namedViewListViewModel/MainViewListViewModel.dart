import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/settingsForNamed/SettingsForDefaultWhereKeyNotFoundNP.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/settingsForNamed/SettingsForLocalExceptionTIP.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/settingsForNamed/SettingsForObjectTIP.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/weatherForNamed/WeatherForDefaultWhereKeyNotFoundNP.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/weatherForNamed/WeatherForLocalExceptionTIP.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/weatherForNamed/WeatherForMapThisNetworkTIP.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/weatherForNamed/WeatherForNetworkExceptionTIP.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/weatherForNamed/WeatherForObjectTIP.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/ListWeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/WeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/cloneStreamWeatherAndSettingsForSuccess/CloneStreamWeatherAndSettingsForSuccess.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/weatherAndSettingsForNamed/WeatherAndSettingsForDefaultNP.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/ListWeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/WeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/cloneStreamWeatherIsLoadingForSuccess/CloneStreamWeatherIsLoadingForSuccess.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/settingsQHiveServiceDataSource/SettingsQHiveServiceDataSourceUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/settingsQHiveServiceDataSource/SettingsQHiveServiceDataSourceUsingUpdateParameterSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherAndSettingsQHiveServiceDataSource/WeatherAndSettingsQHiveServiceDataSourceUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherAndSettingsQHiveServiceDataSource/WeatherAndSettingsQHiveServiceDataSourceUsingUpdateParameterWeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHiveServiceDataSource/WeatherQHiveServiceDataSourceUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHiveServiceDataSource/WeatherQHiveServiceDataSourceUsingUpdateParameterWeather.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHttpClientServiceDataSource/WeatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherAndSettingsQHiveServiceViewModel/WeatherAndSettingsQHiveServiceViewModelUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherAndSettingsQHttpClientAndHiveServiceViewModel/WeatherAndSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherIsLoadingQNoServiceViewModel/WeatherIsLoadingQNoServiceViewModelUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/FloatingActionButtonSearchWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/IconButtonSettingsWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/WeatherWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class MainViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQNamedServiceViewModel
  final _weatherIsLoadingQNoServiceViewModelUsingGetNP =
  WeatherIsLoadingQNoServiceViewModelUsingGetNP<WeatherIsLoading,ListWeatherIsLoading<WeatherIsLoading>>(
      CloneStreamWeatherIsLoadingForSuccess());
  final _weatherAndSettingsQHiveServiceViewModelUsingGetNP =
  WeatherAndSettingsQHiveServiceViewModelUsingGetNP<WeatherAndSettings,ListWeatherAndSettings<WeatherAndSettings>>(
      CloneStreamWeatherAndSettingsForSuccess(),
      WeatherQHiveServiceDataSourceUsingGetNP<Weather,ListWeather<Weather>>(
          WeatherForObjectTIP(),
          WeatherForLocalExceptionTIP(),
          WeatherForDefaultWhereKeyNotFoundNP()),
      SettingsQHiveServiceDataSourceUsingGetNP<Settings,ListSettings<Settings>>(
          SettingsForLocalExceptionTIP(),
          SettingsForObjectTIP(),
          SettingsForDefaultWhereKeyNotFoundNP()),
      WeatherAndSettingsForDefaultNP());
  final _weatherAndSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi =
  WeatherAndSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi<WeatherAndSettings,ListWeatherAndSettings<WeatherAndSettings>>(
      CloneStreamWeatherAndSettingsForSuccess(),
      WeatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi<Weather,ListWeather<Weather>>(
          WeatherForMapThisNetworkTIP(),
          WeatherForNetworkExceptionTIP(),
          WeatherForLocalExceptionTIP()),
      WeatherAndSettingsQHiveServiceDataSourceUsingGetNP<WeatherAndSettings,ListWeatherAndSettings<WeatherAndSettings>>(
          WeatherQHiveServiceDataSourceUsingGetNP<Weather,ListWeather<Weather>>(
              WeatherForObjectTIP(),
              WeatherForLocalExceptionTIP(),
              WeatherForDefaultWhereKeyNotFoundNP()),
          SettingsQHiveServiceDataSourceUsingGetNP<Settings,ListSettings<Settings>>(
              SettingsForLocalExceptionTIP(),
              SettingsForObjectTIP(),
              SettingsForDefaultWhereKeyNotFoundNP()),
          WeatherAndSettingsForDefaultNP()),
      WeatherAndSettingsQHiveServiceDataSourceUsingUpdateParameterWeatherAndSettings<WeatherAndSettings,ListWeatherAndSettings<WeatherAndSettings>>(
          WeatherQHiveServiceDataSourceUsingUpdateParameterWeather<Weather,ListWeather<Weather>>(),
          SettingsQHiveServiceDataSourceUsingUpdateParameterSettings<Settings,ListSettings<Settings>>()),
      WeatherAndSettingsForDefaultNP());

  // NamedWidgetListViewModel
  late final FloatingActionButtonSearchWidgetListViewModel floatingActionButtonSearchWidgetListViewModel;
  late final IconButtonSettingsWidgetListViewModel iconButtonSettingsWidgetListViewModel;
  late final WeatherWidgetListViewModel weatherWidgetListViewModel;

  MainViewListViewModel() {
    floatingActionButtonSearchWidgetListViewModel = FloatingActionButtonSearchWidgetListViewModel(
        _weatherIsLoadingQNoServiceViewModelUsingGetNP,
        _weatherAndSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi);
    iconButtonSettingsWidgetListViewModel = IconButtonSettingsWidgetListViewModel();
    weatherWidgetListViewModel = WeatherWidgetListViewModel(
        _weatherIsLoadingQNoServiceViewModelUsingGetNP,
        _weatherAndSettingsQHiveServiceViewModelUsingGetNP,
        _weatherAndSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi);
  }

  @override
  void dispose() {
    _weatherIsLoadingQNoServiceViewModelUsingGetNP.dispose();
    _weatherAndSettingsQHiveServiceViewModelUsingGetNP.dispose();
    _weatherAndSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi.dispose();
  }
}