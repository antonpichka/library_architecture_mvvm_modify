import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHiveServiceDataSource/WeatherQHiveServiceDataSourceUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/WeatherQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';

class WeatherQHiveServiceViewModelUsingGetNP<T extends Weather,Y extends ListWeather<T>>
    extends WeatherQNamedServiceViewModel<T,Y>
{
  final WeatherQHiveServiceDataSourceUsingGetNP<T,Y> _dataSource;

  WeatherQHiveServiceViewModelUsingGetNP(
      super.iCloneStreamModelForSuccess,
      IModelForNamedTIP<T,Object> iWeatherForObjectTIP,
      IModelForNamedTIP<T,LocalException> iWeatherForLocalExceptionTIP,
      IModelForNamedNP<T> iWeatherForDefaultWhereKeyNotFoundNP)
      : _dataSource = WeatherQHiveServiceDataSourceUsingGetNP(iWeatherForObjectTIP,iWeatherForLocalExceptionTIP,iWeatherForDefaultWhereKeyNotFoundNP),
        super.thereIsDataSource();

  @protected
  @override
  Object get thisClass => this;

  @protected
  @override
  WeatherQHiveServiceDataSourceUsingGetNP<T,Y>? get getModelQNamedServiceDataSource => _dataSource;
}