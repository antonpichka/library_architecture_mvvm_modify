import 'package:library_arch_mvvm_modify_weather/model/weatherSettings/ListWeatherSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherSettings/WeatherSettings.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';

class WeatherSettingsQThereIsStateViewModel<T extends WeatherSettings,
        Y extends ListWeatherSettings<T>>
    extends BaseModelQThereIsStateViewModel<T, Y> {
  WeatherSettingsQThereIsStateViewModel(super.iInitializedStreamModel);

  T? get getWeatherSettings {
    return getModel;
  }

  set setWeatherSettingsUsingCloneWeatherSettingsForSuccess(T weatherSettings) {
    setModel = weatherSettings.cloneWeatherSettingsForSuccess() as T?;
  }
}
