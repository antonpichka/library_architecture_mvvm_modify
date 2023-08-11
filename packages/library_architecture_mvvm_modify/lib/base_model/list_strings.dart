import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';

base class ListStrings<T extends Strings> extends BaseListModel<T> {
  ListStrings.success(super.listModel) : super.success();
  ListStrings.exception(super.exception) : super.exception();

  @override
  List<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for(T strings in listModel ?? List.empty(growable: true)) {
      newListModel.add(Strings.success(strings.field) as T);
    }
    return newListModel;
  }
}
