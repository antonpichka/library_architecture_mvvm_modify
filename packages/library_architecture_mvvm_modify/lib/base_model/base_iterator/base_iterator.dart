import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:meta/meta.dart';

abstract base class BaseIterator<T extends BaseModel> implements Iterator<T> {
  List<T>? listModel;

  @nonVirtual
  List<T> get getSortedListModelParameterListModel {
    List<T> listModel = List.empty(growable: true);
    while (moveNext()) {
      final model = current;
      listModel.add(model);
    }
    this.listModel = listModel;
    return this.listModel!;
  }
}
