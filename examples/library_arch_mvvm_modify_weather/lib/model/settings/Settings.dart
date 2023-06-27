import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_arch_mvvm_modify_weather/utility/TemperatureUnits.dart';
import 'package:library_arch_mvvm_modify_weather/utility/Utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class Settings extends BaseModel {
  static const String constSettingsQHiveService = "__settings_q_hive_service__";
  static const String constParameterColor = "__color__";
  static const String constParameterTemperatureUnits = "__temperature_units__";

  String? color;
  TemperatureUnits? temperatureUnits;

  Settings.success(this.color, this.temperatureUnits) : super.success("");
  Settings.exception(super.exception) : super.exception();
  factory Settings.fromBoxSettings(Box boxSettings) {
    final color = boxSettings.get(constParameterColor);
    final temperatureUnits = boxSettings.get(constParameterTemperatureUnits);
    return Settings.success(color, temperatureUnits);
  }

  static Settings get getSettingsForSuccess =>
      Settings.success(null, TemperatureUnits.celsius);

  Color? get getColorParameterColor {
    if (color == null) {
      return constDefaultColor;
    }
    return Color(int.parse(color!));
  }

  set setOneParametersNamedForListTileTemperatureUnitsWidget(bool isSwitch) {
    temperatureUnits =
        isSwitch ? TemperatureUnits.celsius : TemperatureUnits.fahrenheit;
  }

  bool? isOneParametersNamedForListTileTemperatureUnitsWidget() {
    if (temperatureUnits == null) {
      return true;
    }
    return temperatureUnits == TemperatureUnits.celsius;
  }
}
