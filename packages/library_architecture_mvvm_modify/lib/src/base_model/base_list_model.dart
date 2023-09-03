import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseListModel<T extends BaseModel> {
  final List<T> listModel;

  const BaseListModel(this.listModel);

  BaseListModel<T> get getCloneListModel;

  @nonVirtual
  void modelQNamedIterator(BaseModelQNamedIterator<T> modelQNamedIterator) {
    final sortedListModel = modelQNamedIterator.getSortedListModel(getCloneListModel.listModel);
    listModel.clear();
    listModel.addAll(sortedListModel);
  }

  @nonVirtual
  void insertToListModel(T model) {
    listModel.add(model);
  }

  @nonVirtual
  void updateToListModel(T model) {
    listModel[listModel.indexWhere(
        (T itemModel) => itemModel.uniqueId == model.uniqueId)] = model;
  }

  @nonVirtual
  void deleteToListModel(String uniqueIdByModel) {
    listModel
        .removeWhere((T itemModel) => itemModel.uniqueId == uniqueIdByModel);
  }

  @nonVirtual
  void insertListToListModel(List<T> list) {
    listModel.addAll(list);
  }

  @nonVirtual
  void updateListToListModel(List<T> list) {
    for (T item in list) {
      listModel[listModel.indexWhere(
          (T itemModel) => itemModel.uniqueId == item.uniqueId)] = item;
    }
  }

  @nonVirtual
  void deleteListToListModel(List<String> listUniqueIdByModel) {
    for (String uniqueIdByModel in listUniqueIdByModel) {
      listModel
          .removeWhere((T itemModel) => itemModel.uniqueId == uniqueIdByModel);
    }
  }
}
