import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/settingsQHiveServiceViewModel/SettingsQHiveServiceViewModelUsingCustomValueListenableBoxSettings.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class AppViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQNamedServiceViewModel
  final _settingsQHiveServiceViewModelUsingCustomValueListenableBoxSettings =
      SettingsQHiveServiceViewModelUsingCustomValueListenableBoxSettings();

  @override
  void dispose() {}

  ValueListenable<Box>? get getCustomValueListenableBoxSettings {
    return _settingsQHiveServiceViewModelUsingCustomValueListenableBoxSettings
        .getCustomValueListenableBoxSettings;
  }
}
