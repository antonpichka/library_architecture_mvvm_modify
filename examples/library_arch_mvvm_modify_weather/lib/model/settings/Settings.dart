import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/utility/TemperatureUnits.dart';
import 'package:library_arch_mvvm_modify_weather/utility/Utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class Settings
    extends BaseModel
{
  String? color;
  TemperatureUnits? temperatureUnits;

  Settings.success(this.color,this.temperatureUnits) : super.success("");
  Settings.exception(super.exception) : super.exception();

  static Settings get getSettingsForSuccess => Settings.success("",TemperatureUnits.celsius);
  static Settings get getSettingsForSuccessWhereKeyNotFound => Settings.success(null,null);
  static const constSettingsQHiveService = "__settings_q_hive_service__";
  static const constKeySettingsQHiveService = "__key_settings_q_hive_service__";

  Color? get getOneParametersNamedForAppView {
    if(color == null) {
      return constDefaultColor;
    }
    return Color(int.parse(color!));
  }

  set setOneParametersNamedForListTileTemperatureUnitsWidget(bool isSwitch) {
    final isNotSwitch = !isSwitch;
    temperatureUnits = isNotSwitch
        ? TemperatureUnits.celsius
        : TemperatureUnits.fahrenheit;
  }

  bool? isOneParametersNamedForListTileTemperatureUnitsWidget() {
    return temperatureUnits == TemperatureUnits.celsius;
  }
}