import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:meta/meta.dart';

/// Iterator to sort the list of models
abstract class BaseIterator<T extends BaseModel> implements Iterator<T> {
  /// ListModel which defaults to null
  List<T>? listModel;

  /// Get the sorted list from the ListModel parameter
  /// (ListModel also takes a value like a sorted list)
  @nonVirtual
  List<T> get getSortedListModelParameterListModel {
    List<T> listModel = List.empty(growable: true);
    while (moveNext()) {
      final model = current;
      listModel.add(model);
    }
    this.listModel = listModel;
    return this.listModel!;
  }
}
