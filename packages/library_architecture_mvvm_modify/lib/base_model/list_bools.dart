import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/bools.dart';

base class ListBools<T extends Bools> extends BaseListModel<T> {
  ListBools.success(super.listModel) : super.success();
  ListBools.exception(super.exception) : super.exception();

  @override
  List<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for(T bools in listModel ?? List.empty(growable: true)) {
      newListModel.add(Bools.success(bools.isField) as T);
    }
    return newListModel;
  }
}
