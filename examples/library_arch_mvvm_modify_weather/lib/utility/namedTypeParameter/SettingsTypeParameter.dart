import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

class SettingsTypeParameter<T extends Settings>
    extends BaseTypeParameter<T>
{
  SettingsTypeParameter.success(super.parameter) : super.success();
}