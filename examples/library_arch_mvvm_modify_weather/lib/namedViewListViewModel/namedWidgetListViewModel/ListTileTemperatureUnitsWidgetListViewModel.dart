import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/settingsQHiveServiceViewModel/SettingsQHiveServiceViewModelUsingUpdateParameterSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQThereIsStateViewModel/settingsQThereIsStateViewModel/SettingsQThereIsStateViewModel.dart';
import 'package:meta/meta.dart';

class ListTileTemperatureUnitsWidgetListViewModel {
  @protected
  final SettingsQThereIsStateViewModel settingsQThereIsStateViewModel;
  @protected
  final SettingsQHiveServiceViewModelUsingUpdateParameterSettings settingsQHiveServiceViewModelUsingUpdateParameterSettings;

  ListTileTemperatureUnitsWidgetListViewModel(
      this.settingsQThereIsStateViewModel,
      this.settingsQHiveServiceViewModelUsingUpdateParameterSettings);

  Stream<Settings?>? get getStreamSettings {
    return settingsQThereIsStateViewModel.getStreamSettings;
  }

  Future<void> updateSettingsToHiveServiceParameterSettingsAndInGeneralOneTask(bool isSwitch)
  async {
    settingsQThereIsStateViewModel
        .getSettings
        ?.setOneParametersNamedForListTileTemperatureUnitsWidget = isSwitch;
    settingsQThereIsStateViewModel
        .notifyStreamSettings();
    // 1
    await settingsQHiveServiceViewModelUsingUpdateParameterSettings
        .updateSettingsToHiveServiceParameterSettings(settingsQThereIsStateViewModel.getSettings!);
  }
}