import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';

class SettingsForLocalExceptionTIP
    implements IModelForNamedTIP<Settings,LocalException>
{
  @override
  Settings? getModelForNamedTIP(LocalException? parameter) {
    return Settings.exception(parameter!);
  }
}