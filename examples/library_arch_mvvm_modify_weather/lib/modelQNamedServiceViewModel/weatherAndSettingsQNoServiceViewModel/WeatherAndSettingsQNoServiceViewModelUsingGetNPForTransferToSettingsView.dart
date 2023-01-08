import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/ListWeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/WeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/WeatherAndSettingsQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_for_i_stream_model_vm.dart';

class WeatherAndSettingsQNoServiceViewModelUsingGetNPForTransferToSettingsView<T extends WeatherAndSettings,Y extends ListWeatherAndSettings<T>>
    extends WeatherAndSettingsQNamedServiceViewModel<T,Y>
{
  WeatherAndSettingsQNoServiceViewModelUsingGetNPForTransferToSettingsView(
      IStreamModelForSuccess<T,Y> iCloneStreamModelForSuccess)
      : super.noDataSource([EnumForIStreamModelVM.getNP],iCloneStreamModelForSuccess);

  @protected
  @override
  Object get thisClass => this;

  @protected
  @override
  Object? get getModelQNamedServiceDataSource => null;

  T? get getWeatherAndSettingsUsingGetNPForTransferToSettingsView {
    return getModel(EnumForIStreamModelVM.getNP);
  }
}