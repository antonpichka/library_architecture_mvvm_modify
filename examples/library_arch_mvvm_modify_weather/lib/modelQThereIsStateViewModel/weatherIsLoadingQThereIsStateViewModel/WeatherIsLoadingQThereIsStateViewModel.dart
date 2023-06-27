import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/ListWeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/WeatherIsLoading.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';

base class WeatherIsLoadingQThereIsStateViewModel<T extends WeatherIsLoading,
        Y extends ListWeatherIsLoading<T>>
    extends BaseModelQThereIsStateViewModel<T, Y> {
  WeatherIsLoadingQThereIsStateViewModel(super.iInitializedStreamModel);

  Stream<T?>? get getStreamWeatherIsLoading {
    return getStreamModel;
  }

  T? get getWeatherIsLoading {
    return getModel;
  }

  void notifyStreamWeatherIsLoading() {
    notifyStreamModel();
  }
}
