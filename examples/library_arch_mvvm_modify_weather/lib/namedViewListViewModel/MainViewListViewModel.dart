import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/initializedStreamWeatherIsLoading/InitializedStreamWeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherSettings/initializedStreamWeatherSettings/InitializedStreamWeatherSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherSettingsQHiveServiceViewModel/WeatherSettingsQHiveServiceViewModelUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherSettingsQHttpClientAndHiveServiceViewModel/WeatherSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApiAndUpdateLocal.dart';
import 'package:library_arch_mvvm_modify_weather/modelQThereIsStateViewModel/weatherIsLoadingQThereIsStateViewModel/WeatherIsLoadingQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/modelQThereIsStateViewModel/weatherSettingsQThereIsStateViewModel/WeatherSettingsQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/FloatingActionButtonSearchWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/IconButtonSettingsWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/WeatherWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

final class MainViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQThereIsStateViewModel
  final _weatherIsLoadingQThereIsStateViewModel =
      WeatherIsLoadingQThereIsStateViewModel(
          InitializedStreamWeatherIsLoading());
  final _weatherSettingsQThereIsStateViewModel =
      WeatherSettingsQThereIsStateViewModel(InitializedStreamWeatherSettings());

  // ModelQNamedServiceViewModel
  final _weatherSettingsQHiveServiceViewModelUsingGetNP =
      WeatherSettingsQHiveServiceViewModelUsingGetNP();
  final _weatherSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApiAndUpdateLocal =
      WeatherSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApiAndUpdateLocal();

  // NamedWidgetListViewModel
  late final FloatingActionButtonSearchWidgetListViewModel
      floatingActionButtonSearchWidgetListViewModel;
  late final IconButtonSettingsWidgetListViewModel
      iconButtonSettingsWidgetListViewModel;
  late final WeatherWidgetListViewModel weatherWidgetListViewModel;

  MainViewListViewModel() {
    floatingActionButtonSearchWidgetListViewModel =
        FloatingActionButtonSearchWidgetListViewModel(
            _weatherIsLoadingQThereIsStateViewModel,
            _weatherSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApiAndUpdateLocal,
            _weatherSettingsQThereIsStateViewModel);
    iconButtonSettingsWidgetListViewModel =
        IconButtonSettingsWidgetListViewModel(
            _weatherIsLoadingQThereIsStateViewModel,
            _weatherSettingsQThereIsStateViewModel);
    weatherWidgetListViewModel = WeatherWidgetListViewModel(
        _weatherIsLoadingQThereIsStateViewModel,
        _weatherSettingsQHiveServiceViewModelUsingGetNP,
        _weatherSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApiAndUpdateLocal,
        _weatherSettingsQThereIsStateViewModel);
  }

  @override
  void dispose() {
    _weatherIsLoadingQThereIsStateViewModel.dispose();
    _weatherSettingsQThereIsStateViewModel.dispose();
  }
}
