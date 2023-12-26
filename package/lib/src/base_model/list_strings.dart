import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// Stores a list of strings and performs operations on them
/// Where to use ? - anywhere
@immutable
base class ListStrings<T extends Strings> extends BaseListModel<T> {
  /// Initialize the parameters 'listModel'
  /// Where to use ? - anywhere
  const ListStrings(super.listModel) : super();

  /// Sometimes you need to clone an object to avoid creating references
  /// Where to use ? - anywhere
  @override
  ListStrings<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListStrings<T>(newListModel);
  }
}
