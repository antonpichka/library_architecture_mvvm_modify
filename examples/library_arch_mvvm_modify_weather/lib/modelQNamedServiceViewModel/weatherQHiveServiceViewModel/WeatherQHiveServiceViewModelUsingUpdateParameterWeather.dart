import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHiveServiceDataSource/WeatherQHiveServiceDataSourceUsingUpdateParameterWeather.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/WeatherQNamedServiceViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/utility/namedTypeParameter/WeatherTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class WeatherQHiveServiceViewModelUsingUpdateParameterWeather<T extends Weather,Y extends ListWeather<T>>
    extends WeatherQNamedServiceViewModel<T,Y>
{
  final WeatherQHiveServiceDataSourceUsingUpdateParameterWeather<T,Y> _dataSource;

  WeatherQHiveServiceViewModelUsingUpdateParameterWeather(super.iCloneStreamModelForSuccess)
      : _dataSource = WeatherQHiveServiceDataSourceUsingUpdateParameterWeather(),
        super.thereIsDataSource();

  @protected
  @override
  Object get thisClass => this;

  @protected
  @override
  WeatherQHiveServiceDataSourceUsingUpdateParameterWeather<T,Y>? get getModelQNamedServiceDataSource => _dataSource;

  Future<BoolTypeParameter?> updateWeatherToHiveServiceParameterWeather(WeatherTypeParameter<T> typeParameter) {
    return updateModelToNamedServiceParameterNamedDS<BoolTypeParameter,WeatherTypeParameter<T>>(typeParameter);
  }
}