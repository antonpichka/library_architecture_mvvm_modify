import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseModelTTNamedTTNamedTTNamedTTIterator<
    T extends BaseModel> {
  @protected
  final List<T> listModelIterator;

  BaseModelTTNamedTTNamedTTNamedTTIterator()
      : listModelIterator = List.empty(growable: true);

  @protected
  CurrentModelWIndex<T> get currentModelWIndex;

  @nonVirtual
  List<T> getSortedListModelFromListModelParameterListModelIterator(
      List<T> listModel) {
    if (listModel.isEmpty) {
      return List<T>.empty(growable: true);
    }
    listModelIterator.addAll(listModel);
    final newListModel = List<T>.empty(growable: true);
    while (listModelIterator.isNotEmpty) {
      listModelIterator.removeAt(currentModelWIndex.index);
      newListModel.add(currentModelWIndex.currentModel);
    }
    return newListModel;
  }
}
