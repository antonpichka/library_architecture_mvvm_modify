import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

base class ListStrings<T extends Strings> extends BaseListModel<T> {
  ListStrings.success(super.listModel) : super.success();
  ListStrings.exception(super.exception) : super.exception();

  @override
  ListStrings<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel ?? List.empty(growable: true)) {
      newListModel.add(Strings.success(model.field) as T);
    }
    return ListStrings<T>.success(newListModel);
  }
}
