import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:meta/meta.dart';

abstract class BaseIterator<T extends BaseModel>
    implements Iterator<T>
{
  List<T>? list;

  @nonVirtual
  List<T> get getSortedListByParameterList {
    List<T> list = List.empty(growable: true);
    while(moveNext()) {
      T item = current;
      list.add(item);
    }
    this.list = list;
    return this.list!;
  }
}