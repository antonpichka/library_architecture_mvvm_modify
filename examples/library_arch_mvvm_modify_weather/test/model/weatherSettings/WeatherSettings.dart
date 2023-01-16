import 'package:library_arch_mvvm_modify_weather/model/weatherSettings/WeatherSettings.dart';
import 'package:test/test.dart';

void main() {
  group('get success', () {
    test('cloneWeatherSettings', () {
      final weatherSettings = WeatherSettings.getWeatherSettingsForSuccess;
      expect(weatherSettings.cloneWeatherSettings() != null,true);
    });
  });
}