import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
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
