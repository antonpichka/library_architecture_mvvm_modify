import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:meta/meta.dart';

enum EnumMainTab { todos, stats }

class MainTab extends BaseModel {
  EnumMainTab? enumMainTab;

  MainTab.success(this.enumMainTab) : super.success("");
  MainTab.exception(super.exception) : super.exception();

  static MainTab get getMainTabForSuccess => MainTab.success(EnumMainTab.todos);
  @visibleForTesting
  static MainTab get getMainTabForSuccessWhereUnitTest =>
      MainTab.success(EnumMainTab.todos);

  int? get getIndexParameterEnumMainTab {
    return enumMainTab?.index;
  }

  void setEnumMainTabNameTodosParameterEnumMainTab() {
    enumMainTab = EnumMainTab.todos;
  }

  void setEnumMainTabNameStatsParameterEnumMainTab() {
    enumMainTab = EnumMainTab.stats;
  }

  bool? isEqualsEnumMainTabNameTodosParameterEnumMainTab() {
    return enumMainTab == EnumMainTab.todos;
  }

  bool? isEqualsEnumMainTabNameStatsParameterEnumMainTab() {
    return enumMainTab == EnumMainTab.stats;
  }
}
