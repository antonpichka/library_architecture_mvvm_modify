import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/utility/Utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class Settings
    extends BaseModel
{
  @protected
  String? color;

  Settings.success(this.color) : super.success("");
  Settings.exception(super.exception) : super.exception();

  static Settings get getSettingsForSuccess => Settings.success("");
  static Settings get getSettingsForSuccessWhereKeyNotFound => Settings.success("null");
  static const constSettingsQHiveService = "__settings_q_hive_service__";
  static const constKeySettingsQHiveService = "__key_settings_q_hive_service__";

  Color? get getOneParametersNamedForAppView {
    if(color == "null") {
      return constDefaultColor;
    }
    return Color(int.parse(color!));
  }
}