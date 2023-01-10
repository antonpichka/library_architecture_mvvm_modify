import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class IntQThereIsStateViewModel<T extends Int,Y extends ListInt<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  IntQThereIsStateViewModel(super.iInitializedStreamModel);

  IStreamModel<T,Y>? get getIStreamInt {
    return getIStreamModel;
  }

  Future<T?> get getFutureInt {
    return getFutureModel;
  }

  Stream<T?>? get getStreamInt {
    return getStreamModel;
  }

  T? get getInt {
    return getModel;
  }

  set setInt(T? int) {
    setModel = int;
  }

  void notifyStreamInt() {
    notifyStreamModel();
  }

  Future<Y?> get getFutureListInt {
    return getFutureListModel;
  }

  Stream<Y?>? get getStreamListInt {
    return getStreamListModel;
  }

  Y? get getListInt {
    return getListModel;
  }

  set setListInt(Y? listInt) {
    setListModel = listInt;
  }

  void notifyStreamListInt() {
    notifyStreamListModel();
  }
}