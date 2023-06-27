import 'package:library_architecture_mvvm_modify/utility/base_iterator.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';

final class NoteIteratorForSortedParameterIsCompletedTrue<T extends Note>
    extends BaseIterator<T> {
  @override
  T get current {
    T note = listModel![0];
    int iteration = 0;
    if (note.isCompleted == true) {
      listModel!.removeAt(iteration);
      return note;
    }
    for (int i = 1; i < listModel!.length; i++) {
      if (listModel![i].isCompleted == true) {
        note = listModel![i];
        iteration = i;
        break;
      }
    }
    listModel!.removeAt(iteration);
    return note;
  }

  @override
  bool moveNext() {
    if (listModel!.isEmpty) {
      return false;
    }
    for (Note note in listModel!) {
      if (note.isCompleted == true) {
        return true;
      }
    }
    return false;
  }
}
