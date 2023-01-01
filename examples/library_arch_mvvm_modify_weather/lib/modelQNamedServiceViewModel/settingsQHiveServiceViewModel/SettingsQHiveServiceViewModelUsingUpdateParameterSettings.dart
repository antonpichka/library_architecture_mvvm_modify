import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/settingsQHiveServiceDataSource/SettingsQHiveServiceDataSourceUsingUpdateParameterSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/SettingsQNamedServiceViewModel.dart';

class SettingsQHiveServiceViewModelUsingUpdateParameterSettings<T extends Settings,Y extends ListSettings<T>>
    extends SettingsQNamedServiceViewModel<T,Y>
{
  final SettingsQHiveServiceDataSourceUsingUpdateParameterSettings<T,Y> _dataSource;

  SettingsQHiveServiceViewModelUsingUpdateParameterSettings(
      super.iCloneStreamModelForSuccess)
      : _dataSource = SettingsQHiveServiceDataSourceUsingUpdateParameterSettings(),
        super.thereIsDataSource();

  @protected
  @override
  Object get thisClass => this;

  @protected
  @override
  SettingsQHiveServiceDataSourceUsingUpdateParameterSettings<T,Y>? get getModelQNamedServiceDataSource => _dataSource;
}