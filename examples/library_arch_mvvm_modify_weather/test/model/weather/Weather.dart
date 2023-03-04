import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/utility/EnumWeatherCondition.dart';
import 'package:library_arch_mvvm_modify_weather/utility/TemperatureUnits.dart';
import 'package:test/test.dart';

void main() {
  group('get success', () {
    test('getEnumWeatherCondition', () {
      final weather = Weather.getWeatherForSuccess;
      expect(weather.getEnumWeatherCondition, EnumWeatherCondition.clear);
    });
    test('getNameColorFromGetEnumWeatherCondition', () {
      final weather = Weather.getWeatherForSuccess;
      expect(weather.getNameColorFromGetEnumWeatherCondition,
          Colors.orangeAccent.value.toString());
    });
  });
  group('set success', () {
    test('setOneFromTemperatureUnitsParameterTemperature', () {
      final weather = Weather.getWeatherForSuccess;
      weather.setOneFromTemperatureUnitsParameterTemperature =
          TemperatureUnits.fahrenheit;
      expect(weather.temperature, 32);
    });
  });
  group('is success', () {
    test(
        'isEqualsNullParametersLocationAndWeatherCodeAndTemperatureAndLastUpdated',
        () {
      final weather = Weather.getWeatherForSuccess;
      expect(
          weather
              .isEqualsNullParametersLocationAndWeatherCodeAndTemperatureAndLastUpdated(),
          false);
    });
  });
}
