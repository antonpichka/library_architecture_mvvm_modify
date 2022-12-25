import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';

class SettingsForDefaultWhereKeyNotFoundNP
    implements IModelForNamedNP<Settings>
{
  @override
  Settings? getModelForNamedNP() {
    return Settings.getSettingsForSuccessWhereKeyNotFound;
  }
}