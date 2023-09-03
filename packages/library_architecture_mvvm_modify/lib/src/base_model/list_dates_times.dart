import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListDatesTimes<T extends DatesTimes> extends BaseListModel<T> {
  const ListDatesTimes(super.listModel) : super();

  @override
  ListDatesTimes<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListDatesTimes<T>(newListModel);
  }
}
