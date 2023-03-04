import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

class ListSettings<T extends Settings> extends BaseListModel<T> {
  ListSettings.success(super.listModel) : super.success();
  ListSettings.exception(super.exception) : super.exception();

  static ListSettings get getListSettingsForSuccess => ListSettings.success([]);
}
