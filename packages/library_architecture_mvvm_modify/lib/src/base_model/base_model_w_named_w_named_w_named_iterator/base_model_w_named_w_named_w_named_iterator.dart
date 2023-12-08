import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// Sorts the data, 'ListModel', in common parlance 'Iterator'
/// Where to use ? - use in 'ListModel' class
@immutable
abstract base class BaseModelWNamedWNamedWNamedIterator<T extends BaseModel>
    implements Iterator<T> {
  /// This list of models is used to sort the data
  /// Where to use ? - used to the method 'current' and nowhere else
  @protected
  final List<T> listModelIterator;

  /// Initialize the parameters 'listModelIterator'
  /// Where to use ? - preferably use in 'ListModel' class
  BaseModelWNamedWNamedWNamedIterator()
      : listModelIterator = List.empty(growable: true);

  /// getSortedListModel - we get a sorted list of models
  /// FromNewListModel - we get a new list of models to sort
  /// ParameterListModelIterator - use the 'ListModelIterator' parameter to add data from 'FromNewListModel' and apply this parameter in the 'current' method
  /// Where to use ? - use in 'ListModel' class
  @nonVirtual
  List<T> getSortedListModelFromNewListModelParameterListModelIterator(
      List<T> newListModel) {
    if (newListModel.isEmpty) {
      return List.empty(growable: true);
    }
    listModelIterator.addAll(newListModel);
    List<T> newListModelFIRST = List.empty(growable: true);
    while (moveNext()) {
      final newModel = current;
      newListModelFIRST.add(newModel);
    }
    return newListModelFIRST;
  }

  /// Count until there is an empty list 'ListModelIterator'
  /// Where to use ? - do not use
  @nonVirtual
  @override
  bool moveNext() {
    return listModelIterator.isNotEmpty;
  }
}
