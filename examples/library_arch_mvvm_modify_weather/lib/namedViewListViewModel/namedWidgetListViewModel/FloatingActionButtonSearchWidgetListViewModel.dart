import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherSettingsQHttpClientAndHiveServiceViewModel/WeatherSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApiAndUpdateLocal.dart';
import 'package:library_arch_mvvm_modify_weather/modelQThereIsStateViewModel/weatherIsLoadingQThereIsStateViewModel/WeatherIsLoadingQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/modelQThereIsStateViewModel/weatherSettingsQThereIsStateViewModel/WeatherSettingsQThereIsStateViewModel.dart';
import 'package:meta/meta.dart';

class FloatingActionButtonSearchWidgetListViewModel {
  @protected
  final WeatherIsLoadingQThereIsStateViewModel weatherIsLoadingQThereIsStateViewModel;
  @protected
  final WeatherSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApiAndUpdateLocal weatherSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApiAndUpdateLocal;
  @protected
  final WeatherSettingsQThereIsStateViewModel weatherSettingsQThereIsStateViewModel;

  FloatingActionButtonSearchWidgetListViewModel(
      this.weatherIsLoadingQThereIsStateViewModel,
      this.weatherSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApiAndUpdateLocal,
      this.weatherSettingsQThereIsStateViewModel);

  Future<void> getWeatherSettingsFromHttpClientAndHiveServiceParameterStringAndInGeneralOneTask(String? location)
  async {
    if(location?.isEmpty ?? false) {
      return;
    }
    weatherIsLoadingQThereIsStateViewModel
        .getWeatherIsLoading
        ?.setOneParametersNamedForFloatingActionButtonSearchWidget();
    weatherIsLoadingQThereIsStateViewModel
        .notifyStreamWeatherIsLoading();
    // 1
    final weatherSettingsFromHttpClientAndHive = await weatherSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApiAndUpdateLocal
        .getWeatherSettingsFromHttpClientAndHiveServiceParameterString(location!);
    if(weatherSettingsFromHttpClientAndHive
        !.exceptionController
        .isExceptionNotEqualsNull())
    {
      weatherSettingsQThereIsStateViewModel
          .setWeatherSettingsUsingCloneWeatherSettings = weatherSettingsFromHttpClientAndHive;
      weatherIsLoadingQThereIsStateViewModel
          .getWeatherIsLoading
          ?.setTwoParametersNamedForFloatingActionButtonSearchWidget = weatherSettingsFromHttpClientAndHive;
      weatherIsLoadingQThereIsStateViewModel
          .notifyStreamWeatherIsLoading();
      return;
    }
    weatherSettingsQThereIsStateViewModel
        .setWeatherSettingsUsingCloneWeatherSettings = weatherSettingsFromHttpClientAndHive;
    weatherIsLoadingQThereIsStateViewModel
        .getWeatherIsLoading
        ?.setThreeParametersNamedForFloatingActionButtonSearchWidget = weatherSettingsFromHttpClientAndHive;
    weatherIsLoadingQThereIsStateViewModel
        .notifyStreamWeatherIsLoading();
    return;
  }
}