import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/namedService/HiveService.dart';
import 'package:library_arch_mvvm_modify_weather/utility/namedTypeParameter/WeatherTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class WeatherQHiveServiceDataSourceUsingUpdateParameterWeather<T extends Weather,Y extends ListWeather<T>>
    implements
        UpdateModelToNamedServiceParameterNamedDataSource<BoolTypeParameter,WeatherTypeParameter<T>>
{
  @protected
  final hiveService = HiveService();

  WeatherQHiveServiceDataSourceUsingUpdateParameterWeather();

  @override
  Future<BoolTypeParameter?> updateModelToNamedServiceParameterNamed(WeatherTypeParameter<T>? parameter)
  async {
    try {
      final Box? boxWeather = await hiveService
          .getHiveSingleton
          ?.getBoxWeather();
      boxWeather?.put(Weather.constKeyWeatherQHiveService, parameter!.parameter!);
      return BoolTypeParameter.success(true);
    } catch(e) {
      return BoolTypeParameter.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}