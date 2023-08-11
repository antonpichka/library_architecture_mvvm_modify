import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:meta/meta.dart';

abstract base class BaseModelQNamedIterator<T extends BaseModel>
    implements Iterator<T> {
  final List<T> listModel;

  BaseModelQNamedIterator(this.listModel);

  @nonVirtual
  void sortToListModel() {
    List<T> newListModel = List.empty(growable: true);
    while (moveNext()) {
      final newModel = current;
      newListModel.add(newModel);
    }
    listModel.clear();
    listModel.addAll(newListModel);
  }
}
