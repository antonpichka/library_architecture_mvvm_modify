import 'package:library_architecture_mvvm_modify_todo/model/main_tab/main_tab.dart';
import 'package:test/test.dart';

void main() {
  group('get success', () {
    test('getIndexParameterEnumMainTab', () {
      final mainTab = MainTab.getMainTabForSuccessWhereUnitTest;
      expect(mainTab.getIndexParameterEnumMainTab, 0);
    });
  });
  group('set success', () {
    test('setEnumMainTabNameTodosParameterEnumMainTab', () {
      final mainTab = MainTab.getMainTabForSuccessWhereUnitTest;
      mainTab.setEnumMainTabNameTodosParameterEnumMainTab();
      expect(mainTab.enumMainTab, EnumMainTab.todos);
    });
    test('setEnumMainTabNameStatsParameterEnumMainTab', () {
      final mainTab = MainTab.getMainTabForSuccessWhereUnitTest;
      mainTab.setEnumMainTabNameStatsParameterEnumMainTab();
      expect(mainTab.enumMainTab, EnumMainTab.stats);
    });
  });
  group('is success', () {
    test('isEqualsEnumMainTabNameTodosParameterEnumMainTab', () {
      final mainTab = MainTab.getMainTabForSuccessWhereUnitTest;
      expect(mainTab.isEqualsEnumMainTabNameTodosParameterEnumMainTab(), true);
    });
    test('isEqualsEnumMainTabNameStatsParameterEnumMainTab', () {
      final mainTab = MainTab.getMainTabForSuccessWhereUnitTest;
      expect(mainTab.isEqualsEnumMainTabNameStatsParameterEnumMainTab(), false);
    });
  });
}
