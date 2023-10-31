import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// Stores a list of models and performs operations on them
/// Where to use ? - anywhere
@immutable
abstract base class BaseListModel<T extends BaseModel> {
  /// List of models
  /// Where to use ? - anywhere
  final List<T> listModel;

  /// Initialize the parameters 'listModel'
  /// Where to use ? - anywhere
  const BaseListModel(this.listModel);

  /// Sometimes you need to clone an object to avoid creating references
  /// Where to use ? - anywhere
  BaseListModel<T> get getClone;

  /// sorting - sorting list of models
  /// FromModelWNamedWNamedIterator - we get the iterator itself to sort
  /// ParameterListModel - the 'listModel' parameter gets the sorted list
  /// Where to use ? - preferably in descendant classes and in the 'NamedViewModel' class, but there may be exceptions
  @nonVirtual
  void sortingFromModelWNamedWNamedIteratorParameterListModel(
      BaseModelWNamedWNamedIterator<T> modelWNamedWNamedIterator) {
    final sortedListModelFromNewListModelParameterListModelIterator =
        modelWNamedWNamedIterator
            .getSortedListModelFromNewListModelParameterListModelIterator(
                listModel);
    listModel.isNotEmpty ? listModel.clear() : null;
    listModel.addAll(sortedListModelFromNewListModelParameterListModelIterator);
  }

  /// insert - add to the list of models
  /// FromNewModel - we get a new model that we want to add
  /// ParameterListModel - 'listModel' parameter adds the model
  /// Where to use ? - preferably in descendant classes and in the 'NamedViewModel' class, but there may be exceptions
  @nonVirtual
  void insertFromNewModelParameterListModel(T newModel) {
    listModel.add(newModel);
  }

  /// update - update to the list of models
  /// FromNewModel - we get a new model that we want to update
  /// ParameterListModel - 'listModel' parameter update the model
  /// Where to use ? - preferably in descendant classes and in the 'NamedViewModel' class, but there may be exceptions
  @nonVirtual
  void updateFromNewModelParameterListModel(T newModel) {
    listModel[listModel.indexWhere(
        (T itemModel) => itemModel.uniqueId == newModel.uniqueId)] = newModel;
  }

  /// delete - removal from the list of models
  /// FromUniqueIdByModel - we will delete by unique model identifier
  /// ParameterListModel - 'listModel' parameter delete the model
  /// Where to use ? - preferably in descendant classes and in the 'NamedViewModel' class, but there may be exceptions
  @nonVirtual
  void deleteFromUniqueIdByModelParameterListModel(String uniqueIdByModel) {
    listModel
        .removeWhere((T itemModel) => itemModel.uniqueId == uniqueIdByModel);
  }

  /// insert - add to the list of models
  /// FromNewListModel - we get a new list models that we want to add
  /// ParameterListModel - 'listModel' parameter adds the list models
  /// Where to use ? - preferably in descendant classes and in the 'NamedViewModel' class, but there may be exceptions
  @nonVirtual
  void insertFromNewListModelParameterListModel(List<T> newListModel) {
    listModel.addAll(newListModel);
  }

  /// update - update to the list of models
  /// FromNewListModel - we get a new list models that we want to update
  /// ParameterListModel - 'listModel' parameter update the list models
  /// Where to use ? - preferably in descendant classes and in the 'NamedViewModel' class, but there may be exceptions
  @nonVirtual
  void updateFromNewListModelParameterListModel(List<T> newListModel) {
    for (T newItemModel in newListModel) {
      listModel[listModel.indexWhere(
              (T itemModel) => itemModel.uniqueId == newItemModel.uniqueId)] =
          newItemModel;
    }
  }

  /// delete - removal from the list of models
  /// FromListUniqueIdByModel - we will delete the list by unique model identifier
  /// ParameterListModel - 'listModel' parameter delete the list models
  /// Where to use ? - preferably in descendant classes and in the 'NamedViewModel' class, but there may be exceptions
  @nonVirtual
  void deleteFromListUniqueIdByModelParameterListModel(
      List<String> listUniqueIdByModel) {
    for (String uniqueIdByModel in listUniqueIdByModel) {
      listModel
          .removeWhere((T itemModel) => itemModel.uniqueId == uniqueIdByModel);
    }
  }
}
