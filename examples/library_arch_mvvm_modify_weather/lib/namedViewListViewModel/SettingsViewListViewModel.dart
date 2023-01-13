import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/initializedStreamSettings/InitializedStreamSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/settingsQHiveServiceViewModel/SettingsQHiveServiceViewModelUsingUpdateParameterSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQThereIsStateViewModel/settingsQThereIsStateViewModel/SettingsQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/ListTileTemperatureUnitsWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class SettingsViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQThereIsStateViewModel
  final _settingsQThereIsStateViewModel =
  SettingsQThereIsStateViewModel(InitializedStreamSettings());

  // ModelQNamedServiceViewModel
  final _settingsQHiveServiceViewModelUsingUpdateParameterSettings =
  SettingsQHiveServiceViewModelUsingUpdateParameterSettings();

  // NamedWidgetListViewModel
  late final ListTileTemperatureUnitsWidgetListViewModel listTileTemperatureUnitsWidgetListViewModel;

  SettingsViewListViewModel() {
    listTileTemperatureUnitsWidgetListViewModel = ListTileTemperatureUnitsWidgetListViewModel(
        _settingsQThereIsStateViewModel,
        _settingsQHiveServiceViewModelUsingUpdateParameterSettings);
  }

  @override
  void dispose() {
    _settingsQThereIsStateViewModel.dispose();
  }

  Settings? get getSettings {
    return _settingsQThereIsStateViewModel.getSettings;
  }

  Future<void> setSettingsAndInGeneralZeroTask(Settings settings)
  async {
    _settingsQThereIsStateViewModel
        .setSettings = settings;
    await Future.delayed(const Duration(milliseconds: 100));
    _settingsQThereIsStateViewModel
        .notifyStreamSettings();
  }
}