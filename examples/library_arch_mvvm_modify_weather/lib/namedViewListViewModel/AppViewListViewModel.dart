import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/cloneStreamSettingsForSuccess/CloneStreamSettingsForSuccess.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/settingsForNamed/SettingsForDefaultWhereKeyNotFoundNP.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/settingsForNamed/SettingsForLocalExceptionTIP.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/settingsForNamed/SettingsForObjectTIP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/settingsQHiveServiceViewModel/SettingsQHiveServiceViewModelUsingGetNP.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class AppViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQNamedServiceViewModel
  final _settingsQHiveServiceViewModelUsingGetNP =
  SettingsQHiveServiceViewModelUsingGetNP<Settings,ListSettings>(CloneStreamSettingsForSuccess(),SettingsForLocalExceptionTIP(),SettingsForObjectTIP(),SettingsForDefaultWhereKeyNotFoundNP());

  @override
  void dispose() {
    _settingsQHiveServiceViewModelUsingGetNP.dispose();
  }

  ValueListenable<Box> get getCustomValueListenableBoxSettings {
    return _settingsQHiveServiceViewModelUsingGetNP.getCustomValueListenableBoxSettings!;
  }
}