import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/settingsForNamed/SettingsForDefaultWhereKeyNotFoundNP.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/settingsForNamed/SettingsForLocalExceptionTIP.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/settingsForNamed/SettingsForObjectTIP.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/cloneStreamWeatherForSuccess/CloneStreamWeatherForSuccess.dart';
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
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHiveServiceDataSource/WeatherQHiveServiceDataSourceUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherAndSettingsQHiveServiceViewModel/WeatherAndSettingsQHiveServiceViewModelUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherIsLoadingQNoServiceViewModel/WeatherIsLoadingQNoServiceViewModelUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherQHiveServiceViewModel/WeatherQHiveServiceViewModelUsingUpdateParameterWeather.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherQHttpClientServiceViewModel/WeatherQHttpClientServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/FloatingActionButtonSearchWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/IconButtonSettingsWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/WeatherWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class MainViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQNamedServiceViewModel
  final _weatherQHttpClientServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi =
  WeatherQHttpClientServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi<Weather,ListWeather<Weather>>(CloneStreamWeatherForSuccess(),WeatherForMapThisNetworkTIP(),WeatherForNetworkExceptionTIP(),WeatherForLocalExceptionTIP());
  final _weatherQHiveServiceViewModelUsingUpdateParameterWeather =
  WeatherQHiveServiceViewModelUsingUpdateParameterWeather<Weather,ListWeather<Weather>>(CloneStreamWeatherForSuccess());
  final _weatherIsLoadingQNoServiceViewModelUsingGetNP =
  WeatherIsLoadingQNoServiceViewModelUsingGetNP<WeatherIsLoading,ListWeatherIsLoading<WeatherIsLoading>>(CloneStreamWeatherIsLoadingForSuccess());
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

  // NamedWidgetListViewModel
  late final FloatingActionButtonSearchWidgetListViewModel floatingActionButtonSearchWidgetListViewModel;
  late final IconButtonSettingsWidgetListViewModel iconButtonSettingsWidgetListViewModel;
  late final WeatherWidgetListViewModel weatherWidgetListViewModel;

  MainViewListViewModel() {
    floatingActionButtonSearchWidgetListViewModel = FloatingActionButtonSearchWidgetListViewModel(
        _weatherQHttpClientServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi,
        _weatherQHiveServiceViewModelUsingUpdateParameterWeather,
        _weatherIsLoadingQNoServiceViewModelUsingGetNP);
    iconButtonSettingsWidgetListViewModel = IconButtonSettingsWidgetListViewModel();
    weatherWidgetListViewModel = WeatherWidgetListViewModel(
        _weatherIsLoadingQNoServiceViewModelUsingGetNP,
        _weatherAndSettingsQHiveServiceViewModelUsingGetNP);
  }

  @override
  void dispose() {
    _weatherQHttpClientServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi.dispose();
    _weatherQHiveServiceViewModelUsingUpdateParameterWeather.dispose();
    _weatherIsLoadingQNoServiceViewModelUsingGetNP.dispose();
    _weatherAndSettingsQHiveServiceViewModelUsingGetNP.dispose();
  }
}