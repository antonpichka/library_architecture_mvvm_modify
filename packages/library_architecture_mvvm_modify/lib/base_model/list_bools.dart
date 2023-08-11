import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/bools.dart';

base class ListBools<T extends Bools> extends BaseListModel<T> {
  ListBools.success(super.listModel) : super.success();
  ListBools.exception(super.exception) : super.exception();

  @override
  ListBools<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel ?? List.empty(growable: true)) {
      newListModel.add(Bools.success(model.isField) as T);
    }
    return ListBools<T>.success(newListModel);
  }
}
