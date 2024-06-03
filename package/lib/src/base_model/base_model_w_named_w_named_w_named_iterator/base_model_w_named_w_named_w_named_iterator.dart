import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// Sorts the data, 'ListModel', in common parlance 'Iterator'
/// Where to use ? - use in 'ListModel' class
@immutable
abstract base class BaseModelWNamedWNamedWNamedIterator<T extends BaseModel> {
  /// This list of models is used to sort the data
  /// Where to use ? - used to the method 'current' and nowhere else
  @protected
  final List<T> listModelIterator;

  /// Initialize the parameter 'listModelIterator'
  /// Where to use ? - preferably use in 'BaseListModel' class
  BaseModelWNamedWNamedWNamedIterator()
      : listModelIterator = List.empty(growable: true);

  /// currentModelWIndex - we get a 'CurrentModelWIndex'
  /// Where to use ? - here
  @protected
  CurrentModelWIndex<T> get currentModelWIndex;

  /// getSortedListModel - we get a sorted list of models
  /// FromNewListModel - we get a new list of models to sort
  /// ParameterListModelIterator - use the 'ListModelIterator' parameter to add data from 'FromNewListModel' and apply this parameter in the 'current' method
  /// Where to use ? - use in 'BaseListModel' class
  @nonVirtual
  List<T> getSortedListModelFromNewListModelParameterListModelIterator(
      List<T> newListModel) {
    if (newListModel.isEmpty) {
      return List.empty(growable: true);
    }
    listModelIterator.addAll(newListModel);
    List<T> newListModelFIRST = List.empty(growable: true);
    while (listModelIterator.isNotEmpty) {
      final currentModelWIndexFIRST = currentModelWIndex;
      listModelIterator.removeAt(currentModelWIndexFIRST.index);
      newListModelFIRST.add(currentModelWIndexFIRST.currentModel);
    }
    return newListModelFIRST;
  }
}
