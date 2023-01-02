import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/ListWeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/WeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/WeatherIsLoadingQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_for_i_stream_model_vm.dart';

class WeatherIsLoadingQNoServiceViewModelUsingGetNP<T extends WeatherIsLoading,Y extends ListWeatherIsLoading<T>>
    extends WeatherIsLoadingQNamedServiceViewModel<T,Y>
{
  WeatherIsLoadingQNoServiceViewModelUsingGetNP(
      ICloneStreamModelForSuccess<T,Y> iCloneStreamModelForSuccess)
      : super.noDataSource([EnumForIStreamModelVM.getNP],iCloneStreamModelForSuccess);

  @protected
  @override
  Object get thisClass => this;

  @protected
  @override
  Object? get getModelQNamedServiceDataSource => null;

  Stream<T>? get getStreamWeatherIsLoadingUsingGetNP {
    return getStreamModel(EnumForIStreamModelVM.getNP);
  }

  T? get getWeatherIsLoadingUsingGetNP {
    return getModel(EnumForIStreamModelVM.getNP);
  }

  void notifyStreamWeatherIsLoadingUsingGetNP() {
    notifyStreamModel(EnumForIStreamModelVM.getNP);
  }
}