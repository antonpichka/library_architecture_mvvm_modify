import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/utility/TemperatureUnits.dart';
import 'package:library_arch_mvvm_modify_weather/utility/Utility.dart';
import 'package:test/test.dart';

void main() {
  group('get success', () {
    test('getColorParameterColor', () {
      final settings = Settings.getSettingsForSuccess;
      expect(settings.getColorParameterColor, constDefaultColor);
    });
  });
  group('set success', () {
    test('setOneParametersNamedForListTileTemperatureUnitsWidget', () {
      final settings = Settings.getSettingsForSuccess;
      settings.setOneParametersNamedForListTileTemperatureUnitsWidget = false;
      expect(settings.temperatureUnits, TemperatureUnits.fahrenheit);
    });
  });
  group('is success', () {
    test('isOneParametersNamedForListTileTemperatureUnitsWidget', () {
      final settings = Settings.getSettingsForSuccess;
      expect(settings.isOneParametersNamedForListTileTemperatureUnitsWidget(),
          true);
    });
  });
}
