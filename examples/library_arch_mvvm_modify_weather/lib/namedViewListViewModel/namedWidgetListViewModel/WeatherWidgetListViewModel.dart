import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/WeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherSettingsQHiveServiceViewModel/WeatherSettingsQHiveServiceViewModelUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherSettingsQHttpClientAndHiveServiceViewModel/WeatherSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApiAndUpdateLocal.dart';
import 'package:library_arch_mvvm_modify_weather/modelQThereIsStateViewModel/weatherIsLoadingQThereIsStateViewModel/WeatherIsLoadingQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/modelQThereIsStateViewModel/weatherSettingsQThereIsStateViewModel/WeatherSettingsQThereIsStateViewModel.dart';
import 'package:meta/meta.dart';

base class WeatherWidgetListViewModel {
  @protected
  final WeatherIsLoadingQThereIsStateViewModel
      weatherIsLoadingQThereIsStateViewModel;
  @protected
  final WeatherSettingsQHiveServiceViewModelUsingGetNP
      weatherSettingsQHiveServiceViewModelUsingGetNP;
  @protected
  final WeatherSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApiAndUpdateLocal
      weatherSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApiAndUpdateLocal;
  @protected
  final WeatherSettingsQThereIsStateViewModel
      weatherSettingsQThereIsStateViewModel;

  WeatherWidgetListViewModel(
      this.weatherIsLoadingQThereIsStateViewModel,
      this.weatherSettingsQHiveServiceViewModelUsingGetNP,
      this.weatherSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApiAndUpdateLocal,
      this.weatherSettingsQThereIsStateViewModel);

  Stream<WeatherIsLoading?>? get getStreamWeatherIsLoading {
    return weatherIsLoadingQThereIsStateViewModel.getStreamWeatherIsLoading;
  }

  Future<void> getWeatherSettingsFromHiveServiceNPAndInGeneralOneTask() async {
    if (weatherIsLoadingQThereIsStateViewModel.getWeatherIsLoading
            ?.isOneParametersNamedForWeatherWidget() ??
        false) {
      return;
    }
    weatherIsLoadingQThereIsStateViewModel.getWeatherIsLoading
        ?.setOneParametersNamedForWeatherWidget();
    await Future.delayed(const Duration(milliseconds: 100));
    weatherIsLoadingQThereIsStateViewModel.notifyStreamWeatherIsLoading();
    // 1
    final weatherSettingsFromHive =
        await weatherSettingsQHiveServiceViewModelUsingGetNP
            .getWeatherSettingsFromHiveServiceNP();
    if (weatherSettingsFromHive!.exceptionController
        .isNotEqualsNullParameterException()) {
      weatherSettingsQThereIsStateViewModel
              .setWeatherSettingsUsingCloneWeatherSettingsForSuccess =
          weatherSettingsFromHive;
      weatherIsLoadingQThereIsStateViewModel.getWeatherIsLoading
          ?.setTwoParametersNamedForWeatherWidget = weatherSettingsFromHive;
      weatherIsLoadingQThereIsStateViewModel.notifyStreamWeatherIsLoading();
      return;
    }
    weatherSettingsQThereIsStateViewModel
            .setWeatherSettingsUsingCloneWeatherSettingsForSuccess =
        weatherSettingsFromHive;
    weatherIsLoadingQThereIsStateViewModel.getWeatherIsLoading
        ?.setThreeParametersNamedForWeatherWidget = weatherSettingsFromHive;
    weatherIsLoadingQThereIsStateViewModel.notifyStreamWeatherIsLoading();
    return;
  }

  Future<void>
      getWeatherSettingsFromHttpClientAndHiveServiceParameterStringAndInGeneralOneTask() async {
    if (weatherIsLoadingQThereIsStateViewModel.getWeatherIsLoading
            ?.isTwoParametersNamedForWeatherWidget() ??
        false) {
      return;
    }
    if (weatherIsLoadingQThereIsStateViewModel.getWeatherIsLoading
            ?.isThreeParametersNamedForWeatherWidget() ??
        false) {
      return;
    }
    weatherIsLoadingQThereIsStateViewModel.getWeatherIsLoading
        ?.setFourParametersNamedForWeatherWidget();
    weatherIsLoadingQThereIsStateViewModel.notifyStreamWeatherIsLoading();
    // 1
    final weatherSettingsFromHttpClientAndHive =
        await weatherSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApiAndUpdateLocal
            .getWeatherSettingsFromHttpClientAndHiveServiceParameterString(
                weatherIsLoadingQThereIsStateViewModel.getWeatherIsLoading
                        ?.getFiveParametersNamedForWeatherWidget ??
                    "");
    if (weatherSettingsFromHttpClientAndHive!.exceptionController
        .isNotEqualsNullParameterException()) {
      weatherSettingsQThereIsStateViewModel
              .setWeatherSettingsUsingCloneWeatherSettingsForSuccess =
          weatherSettingsFromHttpClientAndHive;
      weatherIsLoadingQThereIsStateViewModel
              .getWeatherIsLoading?.setFiveParametersNamedForWeatherWidget =
          weatherSettingsFromHttpClientAndHive;
      weatherIsLoadingQThereIsStateViewModel.notifyStreamWeatherIsLoading();
      return;
    }
    weatherSettingsQThereIsStateViewModel
            .setWeatherSettingsUsingCloneWeatherSettingsForSuccess =
        weatherSettingsFromHttpClientAndHive;
    weatherIsLoadingQThereIsStateViewModel
            .getWeatherIsLoading?.setSixParametersNamedForWeatherWidget =
        weatherSettingsFromHttpClientAndHive;
    weatherIsLoadingQThereIsStateViewModel.notifyStreamWeatherIsLoading();
    return;
  }
}
