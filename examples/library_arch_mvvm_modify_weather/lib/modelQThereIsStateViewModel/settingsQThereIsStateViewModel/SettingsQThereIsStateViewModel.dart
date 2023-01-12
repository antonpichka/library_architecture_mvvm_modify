import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';

class SettingsQThereIsStateViewModel<T extends Settings,Y extends ListSettings<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  SettingsQThereIsStateViewModel(super.iInitializedStreamModel);

  Stream<T?>? get getStreamSettings {
    return getStreamModel;
  }

  T? get getSettings {
    return getModel;
  }

  set setSettings(T settings) {
    setModel = settings;
  }

  void notifyStreamSettings() {
    notifyStreamModel();
  }
}