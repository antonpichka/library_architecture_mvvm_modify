import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListInts<T extends Ints> extends BaseListModel<T> {
  const ListInts(super.listModel) : super();

  @override
  ListInts<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListInts<T>(newListModel);
  }
}
