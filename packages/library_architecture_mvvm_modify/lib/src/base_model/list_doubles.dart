import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListDoubles<T extends Doubles> extends BaseListModel<T> {
  const ListDoubles(super.listModel) : super();

  @override
  ListDoubles<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListDoubles<T>(newListModel);
  }
}
