import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/ints.dart';

base class ListInts<T extends Ints> extends BaseListModel<T> {
  ListInts.success(super.listModel) : super.success();
  ListInts.exception(super.exception) : super.exception();

  @override
  ListInts<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel ?? List.empty(growable: true)) {
      newListModel.add(Ints.success(model.field) as T);
    }
    return ListInts<T>.success(newListModel);
  }
}
