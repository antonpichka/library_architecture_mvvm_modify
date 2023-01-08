import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';

class IntQThereIsStateViewModelForIncrementAndDecrement<T extends Int,Y extends ListInt<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  IntQThereIsStateViewModelForIncrementAndDecrement(super.iInitializedStreamModel) : super();

  Stream<T>? get getStreamIntForIncrementAndDecrement {
    return getStreamModel;
  }

  T? get getIntForIncrementAndDecrement {
    return getModel;
  }

  set setIntForIncrementAndDecrement(T? int) {
    setModel = int;
  }

  void notifyStreamIntForIncrementAndDecrement() {
    notifyStreamModel();
  }
}