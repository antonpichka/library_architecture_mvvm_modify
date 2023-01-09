import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';

class SettingsForObjectTIP
    implements IModelForNamedTIP<Settings,Object>
{
  @override
  Settings? getModelForNamedTIP(Object? parameter) {
    if(parameter == null) {
      return null;
    }
    final settings = parameter as Settings;
    return Settings.success(
        settings.color,
        settings.temperatureUnits);
  }
}