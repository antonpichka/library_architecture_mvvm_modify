import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:meta/meta.dart';

abstract base class BaseModelQNamedIterator<T extends BaseModel> implements Iterator<T> {
  List<T>? listModel;

  @nonVirtual
  void sortToListModel() {
    List<T> listModel = List.empty(growable: true);
    while (moveNext()) {
      final model = current;
      listModel.add(model);
    }
    this.listModel = listModel;
  }
}
