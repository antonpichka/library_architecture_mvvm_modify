import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

base class IntsQWhereOrderByDescParameterFieldIterator<T extends Ints>
    extends BaseModelQNamedIterator<T> {
  @override
  T get current {
    T itemCurrentInts = listModelForIterator[0].getCloneModel as T;
    if (listModelForIterator.length <= 1) {
      listModelForIterator.removeAt(0);
      return itemCurrentInts;
    }
    int indexRemove = 0;
    for (int i = 1; i < listModelForIterator.length; i++) {
      if (listModelForIterator[i].field > itemCurrentInts.field) {
        itemCurrentInts = listModelForIterator[i].getCloneModel as T;
        indexRemove = i;
        continue;
      }
    }
    listModelForIterator.removeAt(indexRemove);
    return itemCurrentInts;
  }

  @override
  bool moveNext() {
    return listModelForIterator.isNotEmpty;
  }
}

void main() {
  ListInts<Ints> listInts = ListInts(List.empty(growable: true));
  listInts.insertToListModel(Ints(3)); // 0
  listInts.insertToListModel(Ints(1)); // 1
  listInts.insertToListModel(Ints(10)); // 2
  listInts.insertToListModel(Ints(5)); // 3
  listInts.insertToListModel(Ints(7)); // 4
  listInts.insertToListModel(Ints(-1)); // 5
  debugPrint("Before: ${listInts.listModel.toString()}"); // 3, 1, 10, 5, 7, -1
  final intsQWhereOrderByDescParameterFieldIterator =
      IntsQWhereOrderByDescParameterFieldIterator<Ints>();
  listInts.modelQNamedIterator(intsQWhereOrderByDescParameterFieldIterator);
  debugPrint("After: ${listInts.listModel.toString()}"); // 10, 7, 5, 3, 1, -1
  listInts.modelQNamedIterator(intsQWhereOrderByDescParameterFieldIterator);
  debugPrint(
      "After (Two): ${listInts.listModel.toString()}"); // 10, 7, 5, 3, 1, -1
}
