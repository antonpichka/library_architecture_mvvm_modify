import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseListModel<T extends BaseModel> {
  final List<T> listModel;

  const BaseListModel(this.listModel);

  BaseListModel<T> clone();

  @override
  String toString();

  @nonVirtual
  void sortingFromModelTTNamedTTNamedTTNamedTTIteratorParameterListModel(
      BaseModelTTNamedTTNamedTTNamedTTIterator<T>
          modelTTNamedTTNamedTTNamedTTIterator) {
    final sortedListModelFromListModelParameterListModelIterator =
        modelTTNamedTTNamedTTNamedTTIterator
            .getSortedListModelFromListModelParameterListModelIterator(
                listModel);
    listModel.isNotEmpty ? listModel.clear() : null;
    sortedListModelFromListModelParameterListModelIterator.isNotEmpty
        ? listModel
            .addAll(sortedListModelFromListModelParameterListModelIterator)
        : null;
  }

  @nonVirtual
  void insertFromNewModelParameterListModel(T newModel) {
    listModel.add(newModel);
  }

  @nonVirtual
  void updateFromNewModelParameterListModel(T newModel) {
    listModel[listModel.indexWhere(
        (T itemModel) => itemModel.uniqueId == newModel.uniqueId)] = newModel;
  }

  @nonVirtual
  void deleteFromUniqueIdByModelParameterListModel(String uniqueIdByModel) {
    listModel
        .removeWhere((T itemModel) => itemModel.uniqueId == uniqueIdByModel);
  }

  @nonVirtual
  void insertListFromNewListModelParameterListModel(List<T> newListModel) {
    listModel.addAll(newListModel);
  }

  @nonVirtual
  void updateListFromNewListModelParameterListModel(List<T> newListModel) {
    for (T newItemModel in newListModel) {
      listModel[listModel.indexWhere(
              (T itemModel) => itemModel.uniqueId == newItemModel.uniqueId)] =
          newItemModel;
    }
  }

  @nonVirtual
  void deleteListFromListUniqueIdByModelParameterListModel(
      List<String> listUniqueIdByModel) {
    for (String itemUniqueIdByModel in listUniqueIdByModel) {
      listModel.removeWhere(
          (T itemModel) => itemModel.uniqueId == itemUniqueIdByModel);
    }
  }
}
