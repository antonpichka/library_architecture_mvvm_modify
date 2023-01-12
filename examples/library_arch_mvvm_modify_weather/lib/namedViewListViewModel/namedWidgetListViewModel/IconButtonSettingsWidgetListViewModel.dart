import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherSettings/WeatherSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQThereIsStateViewModel/weatherIsLoadingQThereIsStateViewModel/WeatherIsLoadingQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/modelQThereIsStateViewModel/weatherSettingsQThereIsStateViewModel/WeatherSettingsQThereIsStateViewModel.dart';
import 'package:meta/meta.dart';

class IconButtonSettingsWidgetListViewModel {
  @protected
  final WeatherIsLoadingQThereIsStateViewModel weatherIsLoadingQThereIsStateViewModel;
  @protected
  final WeatherSettingsQThereIsStateViewModel weatherSettingsQThereIsStateViewModel;

  IconButtonSettingsWidgetListViewModel(
      this.weatherIsLoadingQThereIsStateViewModel,
      this.weatherSettingsQThereIsStateViewModel);

  WeatherSettings? get getWeatherSettings {
    return weatherSettingsQThereIsStateViewModel.getWeatherSettings;
  }

  void setOneParametersForIconButtonSettingsWidgetAndInGeneralZeroTask(Settings settings) {
    weatherSettingsQThereIsStateViewModel
        .getWeatherSettings
        ?.setOneParametersForIconButtonSettingsWidget = settings;
    weatherIsLoadingQThereIsStateViewModel
        .getWeatherIsLoading
        ?.setOneParametersNamedForIconButtonSettingsWidget = weatherSettingsQThereIsStateViewModel.getWeatherSettingsUsingCloneWeatherSettings!;
    weatherIsLoadingQThereIsStateViewModel
        .notifyStreamWeatherIsLoading();
    return;
  }
}