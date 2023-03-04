import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/WeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherSettings/WeatherSettings.dart';
import 'package:library_arch_mvvm_modify_weather/utility/TemperatureUnits.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';
import 'package:test/test.dart';

void main() {
  group('get success', () {
    test('getEnumWeatherIsLoadingForWeatherWidget', () {
      final weatherIsLoading = WeatherIsLoading.getWeatherIsLoadingForSuccess;
      expect(weatherIsLoading.getEnumWeatherIsLoadingForWeatherWidget,
          EnumWeatherIsLoadingForWeatherWidget.success);
    });
    test('getOneParametersNamedForWeatherWidget', () {
      final weatherIsLoading = WeatherIsLoading.getWeatherIsLoadingForSuccess;
      expect(weatherIsLoading.getOneParametersNamedForWeatherWidget, "0.0°C");
    });
    test('getTwoParametersNamedForWeatherWidget', () {
      final weatherIsLoading = WeatherIsLoading.getWeatherIsLoadingForSuccess;
      expect(weatherIsLoading.getTwoParametersNamedForWeatherWidget, "☀️");
    });
    test('getThreeParametersNamedForWeatherWidget', () {
      final weatherIsLoading = WeatherIsLoading.getWeatherIsLoadingForSuccess;
      expect(weatherIsLoading.getThreeParametersNamedForWeatherWidget, "");
    });
    test('getFourParametersNamedForWeatherWidget', () {
      final weatherIsLoading = WeatherIsLoading.getWeatherIsLoadingForSuccess;
      expect(weatherIsLoading.getFourParametersNamedForWeatherWidget,
          "Last Updated at ");
    });
    test('getFiveParametersNamedForWeatherWidget', () {
      final weatherIsLoading = WeatherIsLoading.getWeatherIsLoadingForSuccess;
      expect(weatherIsLoading.getFiveParametersNamedForWeatherWidget, "");
    });
    test('getSixParametersNamedForWeatherWidget', () {
      final weatherIsLoading = WeatherIsLoading.getWeatherIsLoadingForSuccess;
      expect(
          weatherIsLoading.getSixParametersNamedForWeatherWidget != null, true);
    });
  });
  group('set success', () {
    test('setOneParametersNamedForFloatingActionButtonSearchWidget', () {
      final weatherIsLoading = WeatherIsLoading.getWeatherIsLoadingForSuccess;
      weatherIsLoading
          .setOneParametersNamedForFloatingActionButtonSearchWidget();
      expect(weatherIsLoading.isLoading, true);
    });
    test('setTwoParametersNamedForFloatingActionButtonSearchWidget', () {
      final weatherIsLoading = WeatherIsLoading.getWeatherIsLoadingForSuccess;
      weatherIsLoading
              .setTwoParametersNamedForFloatingActionButtonSearchWidget =
          WeatherSettings.getWeatherSettingsForSuccess;
      expect(weatherIsLoading.exceptionController.enumWhatIsTheException,
          EnumWhatIsTheException.noException);
      expect(weatherIsLoading.isLoading, false);
    });
    test('setThreeParametersNamedForFloatingActionButtonSearchWidget', () {
      final weatherIsLoading = WeatherIsLoading.getWeatherIsLoadingForSuccess;
      weatherIsLoading
              .setThreeParametersNamedForFloatingActionButtonSearchWidget =
          WeatherSettings.getWeatherSettingsForSuccess;
      expect(weatherIsLoading.exceptionController.enumWhatIsTheException,
          EnumWhatIsTheException.noException);
      expect(weatherIsLoading.isLoading, false);
      expect(weatherIsLoading.temperatureUnits, TemperatureUnits.celsius);
      expect(weatherIsLoading.weather != null, true);
    });
    test('setOneParametersNamedForWeatherWidget', () {
      final weatherIsLoading = WeatherIsLoading.getWeatherIsLoadingForSuccess;
      weatherIsLoading.setOneParametersNamedForWeatherWidget();
      expect(weatherIsLoading.isLoading, true);
    });
    test('setTwoParametersNamedForWeatherWidget', () {
      final weatherIsLoading = WeatherIsLoading.getWeatherIsLoadingForSuccess;
      weatherIsLoading.setTwoParametersNamedForWeatherWidget =
          WeatherSettings.getWeatherSettingsForSuccess;
      expect(weatherIsLoading.exceptionController.enumWhatIsTheException,
          EnumWhatIsTheException.noException);
      expect(weatherIsLoading.isLoading, false);
    });
    test('setThreeParametersNamedForWeatherWidget', () {
      final weatherIsLoading = WeatherIsLoading.getWeatherIsLoadingForSuccess;
      weatherIsLoading.setThreeParametersNamedForWeatherWidget =
          WeatherSettings.getWeatherSettingsForSuccess;
      expect(weatherIsLoading.exceptionController.enumWhatIsTheException,
          EnumWhatIsTheException.noException);
      expect(weatherIsLoading.isLoading, false);
      expect(weatherIsLoading.temperatureUnits, TemperatureUnits.celsius);
      expect(weatherIsLoading.weather != null, true);
    });
    test('setFourParametersNamedForWeatherWidget', () {
      final weatherIsLoading = WeatherIsLoading.getWeatherIsLoadingForSuccess;
      weatherIsLoading.setFourParametersNamedForWeatherWidget();
      expect(weatherIsLoading.isLoading, true);
    });
    test('setFiveParametersNamedForWeatherWidget', () {
      final weatherIsLoading = WeatherIsLoading.getWeatherIsLoadingForSuccess;
      weatherIsLoading.setFiveParametersNamedForWeatherWidget =
          WeatherSettings.getWeatherSettingsForSuccess;
      expect(weatherIsLoading.exceptionController.enumWhatIsTheException,
          EnumWhatIsTheException.noException);
      expect(weatherIsLoading.isLoading, false);
    });
    test('setSixParametersNamedForWeatherWidget', () {
      final weatherIsLoading = WeatherIsLoading.getWeatherIsLoadingForSuccess;
      weatherIsLoading.setSixParametersNamedForWeatherWidget =
          WeatherSettings.getWeatherSettingsForSuccess;
      expect(weatherIsLoading.exceptionController.enumWhatIsTheException,
          EnumWhatIsTheException.noException);
      expect(weatherIsLoading.isLoading, false);
      expect(weatherIsLoading.temperatureUnits, TemperatureUnits.celsius);
      expect(weatherIsLoading.weather != null, true);
    });
  });
  group('is success', () {
    test('isOneParametersNamedForWeatherWidget', () {
      final weatherIsLoading = WeatherIsLoading.getWeatherIsLoadingForSuccess;
      expect(weatherIsLoading.isOneParametersNamedForWeatherWidget(), false);
    });
    test('isTwoParametersNamedForWeatherWidget', () {
      final weatherIsLoading = WeatherIsLoading.getWeatherIsLoadingForSuccess;
      expect(weatherIsLoading.isTwoParametersNamedForWeatherWidget(), false);
    });
    test('isTwoParametersNamedForWeatherWidget', () {
      final weatherIsLoading = WeatherIsLoading.getWeatherIsLoadingForSuccess;
      expect(weatherIsLoading.isThreeParametersNamedForWeatherWidget(), false);
    });
  });
}
