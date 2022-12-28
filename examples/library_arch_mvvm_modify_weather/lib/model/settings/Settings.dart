import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/model/temperature/Temperature.dart';
import 'package:library_arch_mvvm_modify_weather/utility/Utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class Settings
    extends BaseModel
{
  @protected
  String? color;
  @protected
  TemperatureUnits? temperatureUnits;

  Settings.success(this.color,this.temperatureUnits) : super.success("");
  Settings.exception(super.exception) : super.exception();

  static Settings get getSettingsForSuccess => Settings.success("",TemperatureUnits.celsius);
  static Settings get getSettingsForSuccessWhereKeyNotFound => Settings.success(null,null);
  static const constSettingsQHiveService = "__settings_q_hive_service__";
  static const constKeySettingsQHiveService = "__key_settings_q_hive_service__";

  @nonVirtual
  String? get getParameterColor => color;
  @nonVirtual
  TemperatureUnits? get getParameterTemperatureUnits => temperatureUnits;

  Color? get getOneParametersNamedForAppView {
    if(color == null) {
      return constDefaultColor;
    }
    return Color(int.parse(color!));
  }
}