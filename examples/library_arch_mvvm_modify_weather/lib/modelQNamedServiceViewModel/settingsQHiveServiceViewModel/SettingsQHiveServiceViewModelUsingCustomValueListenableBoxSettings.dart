import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/namedService/HiveService.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
// ignore: unnecessary_import
import 'package:meta/meta.dart';

base class SettingsQHiveServiceViewModelUsingCustomValueListenableBoxSettings<
    T extends Settings,
    Y extends ListSettings<T>> extends BaseModelQNamedServiceViewModel<T, Y> {
  @protected
  final hiveService = HiveService();

  @nonVirtual
  @override
  Object? get modelQNamedServiceDataSource => this;

  ValueListenable<Box>? get getCustomValueListenableBoxSettings {
    return hiveService.getBoxSettingsAlreadyOpen()?.listenable();
  }
}
