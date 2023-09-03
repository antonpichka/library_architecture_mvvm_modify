import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListBools<T extends Bools> extends BaseListModel<T> {
  const ListBools(super.listModel) : super();

  @override
  ListBools<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListBools<T>(newListModel);
  }
}
