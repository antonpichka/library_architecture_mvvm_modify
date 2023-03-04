import 'package:library_arch_mvvm_modify_weather/model/location/Location.dart';
import 'package:test/test.dart';

void main() {
  group('is success', () {
    test('isEqualsNullParametersIdAndNameAndLatitudeAndLongitude', () {
      final location = Location.getLocationForSuccess;
      expect(location.isEqualsNullParametersIdAndNameAndLatitudeAndLongitude(),
          false);
    });
  });
}
