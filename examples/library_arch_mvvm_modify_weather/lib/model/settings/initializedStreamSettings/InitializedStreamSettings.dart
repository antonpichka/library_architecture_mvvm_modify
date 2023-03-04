import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class InitializedStreamSettings
    implements IInitializedStreamModel<Settings, ListSettings> {
  @override
  IStreamModel<Settings, ListSettings>? initializedStreamModel() {
    return DefaultStreamModel<Settings, ListSettings>(
        Settings.getSettingsForSuccess, ListSettings.getListSettingsForSuccess);
  }
}
