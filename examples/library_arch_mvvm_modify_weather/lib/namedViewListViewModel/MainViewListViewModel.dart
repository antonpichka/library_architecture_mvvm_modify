import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/cloneStreamWeatherForSuccess/CloneStreamWeatherForSuccess.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/weatherForNamed/WeatherForLocalExceptionTIP.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/weatherForNamed/WeatherForMapTIP.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/weatherForNamed/WeatherForNetworkExceptionTIP.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/ListWeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/WeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/cloneStreamWeatherIsLoadingForSuccess/CloneStreamWeatherIsLoadingForSuccess.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherIsLoadingQNoServiceViewModel/WeatherIsLoadingQNoServiceViewModelUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherQHiveServiceViewModel/WeatherQHiveServiceViewModelUsingUpdateParameterWeather.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherQHttpClientServiceViewModel/WeatherQHttpClientServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/FloatingActionButtonSearchWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class MainViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQNamedServiceViewModel
  final _weatherQHttpClientServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi =
  WeatherQHttpClientServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi<Weather,ListWeather<Weather>>(CloneStreamWeatherForSuccess(),WeatherForMapTIP(),WeatherForNetworkExceptionTIP(),WeatherForLocalExceptionTIP());
  final _weatherQHiveServiceViewModelUsingUpdateParameterWeather =
  WeatherQHiveServiceViewModelUsingUpdateParameterWeather<Weather,ListWeather<Weather>>(CloneStreamWeatherForSuccess());
  final _weatherIsLoadingQNoServiceViewModelUsingGetNP =
  WeatherIsLoadingQNoServiceViewModelUsingGetNP<WeatherIsLoading,ListWeatherIsLoading<WeatherIsLoading>>(CloneStreamWeatherIsLoadingForSuccess());

  // NamedWidgetListViewModel
  late final FloatingActionButtonSearchWidgetListViewModel floatingActionButtonSearchWidgetListViewModel;

  MainViewListViewModel() {
    floatingActionButtonSearchWidgetListViewModel = FloatingActionButtonSearchWidgetListViewModel(
        _weatherQHttpClientServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi,
        _weatherQHiveServiceViewModelUsingUpdateParameterWeather,
        _weatherIsLoadingQNoServiceViewModelUsingGetNP);
  }

  @override
  void dispose() {
    _weatherQHttpClientServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi.dispose();
    _weatherQHiveServiceViewModelUsingUpdateParameterWeather.dispose();
    _weatherIsLoadingQNoServiceViewModelUsingGetNP.dispose();
  }
}