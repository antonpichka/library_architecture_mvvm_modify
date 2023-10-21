import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseListModel<T extends BaseModel> {
  final List<T> listModel;

  const BaseListModel(this.listModel);

  BaseListModel<T> get getClone;

  @nonVirtual
  void sortingFromModelWhereNamedParameterNamedIteratorParameterListModel(BaseModelWhereNamedParameterNamedIterator<T> modelWhereNamedParameterNamedIterator) {
    final sortedListModel =
        modelWhereNamedParameterNamedIterator.getSortedListModelFromListModelParameterListModelIterator(listModel);
    listModel.isNotEmpty ? listModel.clear() : null;
    listModel.addAll(sortedListModel);
  }

  @nonVirtual
  void insertFromModelParameterListModel(T model) {
    listModel.add(model);
  }

  @nonVirtual
  void updateFromModelParameterListModel(T model) {
    listModel[listModel.indexWhere(
        (T itemModel) => itemModel.uniqueId == model.uniqueId)] = model;
  }

  @nonVirtual
  void deleteFromUniqueIdByModelParameterListModel(String uniqueIdByModel) {
    listModel
        .removeWhere((T itemModel) => itemModel.uniqueId == uniqueIdByModel);
  }

  @nonVirtual
  void insertFromNewListModelParameterListModel(List<T> newListModel) {
    listModel.addAll(newListModel);
  }

  @nonVirtual
  void updateFromNewListModelParameterListModel(List<T> newListModel) {
    for (T newItemModel in newListModel) {
      listModel[listModel.indexWhere(
          (T itemModel) => itemModel.uniqueId == newItemModel.uniqueId)] = newItemModel;
    }
  }

  @nonVirtual
  void deleteFromListUniqueIdByModelParameterListModel(List<String> listUniqueIdByModel) {
    for (String uniqueIdByModel in listUniqueIdByModel) {
      listModel
          .removeWhere((T itemModel) => itemModel.uniqueId == uniqueIdByModel);
    }
  }
}
