import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseModelWhereNamedParameterNamedIterator<T extends BaseModel>
    implements Iterator<T> {
  @protected
  final List<T> listModelIterator = List.empty(growable: true);

  BaseModelWhereNamedParameterNamedIterator();

  @nonVirtual
  List<T> getSortedListModelFromListModelParameterListModelIterator(List<T> listModel) {
    if(listModel.isEmpty) {
      return List.empty(growable: true);
    }
    listModelIterator.addAll(listModel);
    List<T> newListModel = List.empty(growable: true);
    while (moveNext()) {
      final newModel = current;
      newListModel.add(newModel);
    }
    return newListModel;
  }

  @nonVirtual
  @override
  bool moveNext() {
    return listModelIterator.isNotEmpty;
  }
}
