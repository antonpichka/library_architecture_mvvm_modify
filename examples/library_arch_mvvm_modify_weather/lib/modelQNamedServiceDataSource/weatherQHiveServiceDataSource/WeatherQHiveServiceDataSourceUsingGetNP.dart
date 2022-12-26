import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/namedService/HiveService.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';

class WeatherQHiveServiceDataSourceUsingGetNP<T extends Weather,Y extends ListWeather<T>>
    implements GetModelFromNamedServiceNPDataSource<T>
{
  @protected
  final hiveService = HiveService();
  @protected
  final IModelForNamedTIP<T,Object> iWeatherForObjectTIP;
  @protected
  final IModelForNamedTIP<T,LocalException> iWeatherForLocalExceptionTIP;
  @protected
  final IModelForNamedNP<T> iWeatherForDefaultWhereKeyNotFoundNP;

  WeatherQHiveServiceDataSourceUsingGetNP(
      this.iWeatherForObjectTIP,
      this.iWeatherForLocalExceptionTIP,
      this.iWeatherForDefaultWhereKeyNotFoundNP);

  @override
  Future<T?> getModelFromNamedServiceNP()
  async {
    try {
      final Box? boxWeather = await hiveService
          .getHiveSingleton
          ?.getBoxWeather();
      return iWeatherForObjectTIP.getModelForNamedTIP(boxWeather?.get(Weather.constKeyWeatherQHiveService, defaultValue: iWeatherForDefaultWhereKeyNotFoundNP.getModelForNamedNP()));
    } catch(e) {
      return iWeatherForLocalExceptionTIP.getModelForNamedTIP(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

}