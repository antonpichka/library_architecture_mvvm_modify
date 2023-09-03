import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListStrings<T extends Strings> extends BaseListModel<T> {
  const ListStrings(super.listModel) : super();

  @override
  ListStrings<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListStrings<T>(newListModel);
  }
}
