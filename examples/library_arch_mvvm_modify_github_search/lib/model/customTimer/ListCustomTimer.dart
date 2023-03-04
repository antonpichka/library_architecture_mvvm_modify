import 'package:library_arch_mvvm_modify_github_search/model/customTimer/CustomTimer.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

class ListCustomTimer<T extends CustomTimer> extends BaseListModel<T> {
  ListCustomTimer.success(super.listModel) : super.success();

  static ListCustomTimer get getListCustomTimerForSuccess =>
      ListCustomTimer.success([]);
}
