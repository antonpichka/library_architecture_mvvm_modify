import 'package:library_arch_mvvm_modify_github_search/model/customTimer/CustomTimer.dart';
import 'package:test/test.dart';

void main() {
  group('set success', () {
    test('setOneParametersNamedForSearchBarWidget success', () {
      final customTimer = CustomTimer.getCustomTimerForSuccess;
      customTimer.setOneParametersNamedForSearchBarWidget = () {};
      expect(customTimer.timer != null, true);
    });
    test('setTwoParametersNamedForSearchBarWidget success', () {
      final customTimer = CustomTimer.getCustomTimerForSuccess;
      customTimer.setTwoParametersNamedForSearchBarWidget();
      expect(customTimer.timer == null, true);
    });
  });
}