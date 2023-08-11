import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:meta/meta.dart';

abstract base class BaseModelQNamedIterator<T extends BaseModel>
    implements Iterator<T> {
  @protected
  final List<T> listModelForIterator = List.empty(growable: true);

  @nonVirtual
  List<T> getSortedListModel(List<T> oldListModel) {
    listModelForIterator.clear();
    listModelForIterator.addAll(oldListModel);
    List<T> newListModel = List.empty(growable: true);
    while (moveNext()) {
      final newModel = current;
      newListModel.add(newModel);
    }
    return newListModel;
  }
}
