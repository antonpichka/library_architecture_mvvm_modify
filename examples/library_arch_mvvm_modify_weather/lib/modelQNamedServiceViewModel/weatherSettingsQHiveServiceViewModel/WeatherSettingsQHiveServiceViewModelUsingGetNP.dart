import 'package:library_arch_mvvm_modify_weather/model/weatherSettings/ListWeatherSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherSettings/WeatherSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/namedService/HiveService.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:meta/meta.dart';

class WeatherSettingsQHiveServiceViewModelUsingGetNP
    extends BaseModelQNamedServiceViewModel<WeatherSettings,ListWeatherSettings>
{
  @protected
  final hiveService = HiveService();
  @protected
  final IModelForNamedTIP<T,List<Object>> iWeatherSettingsForListObjectTIP;
  @protected
  final IModelForNamedTIP<T,LocalException> iWeatherSettingsForLocalExceptionTIP;
  @protected
  final IModelForNamedNP<T> iWeatherSettingsForDefaultNP;

  WeatherSettingsQHiveServiceViewModelUsingGetNP(
      this.iWeatherSettingsForListObjectTIP,
      this.iWeatherSettingsForLocalExceptionTIP,
      this.iWeatherSettingsForDefaultNP);

  Future<WeatherSettings?> getWeatherSettingsFromHiveServiceNP() {
    return getModelFromNamedServiceNP();
  }

  @protected
  @override
  Object? get modelQNamedServiceDataSource => this;
}