import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class CloneStreamSettingsForSuccess
    implements IStreamModelForSuccess<Settings,ListSettings<Settings>>
{
  @override
  IStreamModel<Settings, ListSettings<Settings>>? streamModelForSuccess() {
    return DefaultStreamModel<Settings,ListSettings>(Settings.getSettingsForSuccess,ListSettings.getListSettingsForSuccess);
  }
}