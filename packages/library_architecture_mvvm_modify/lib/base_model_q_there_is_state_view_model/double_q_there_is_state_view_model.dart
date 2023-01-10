import 'package:library_architecture_mvvm_modify/base_model/double.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_double.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class DoubleQThereIsStateViewModel<T extends Double,Y extends ListDouble<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  DoubleQThereIsStateViewModel(super.iInitializedStreamModel);

  IStreamModel<T,Y>? get getIStreamDouble {
    return getIStreamModel;
  }

  Future<T?> get getFutureDouble {
    return getFutureModel;
  }

  Stream<T?>? get getStreamDouble {
    return getStreamModel;
  }

  T? get getDouble {
    return getModel;
  }

  set setDouble(T? double) {
    setModel = double;
  }

  void notifyStreamDouble() {
    notifyStreamModel();
  }

  Future<Y?> get getFutureListDouble {
    return getFutureListModel;
  }

  Stream<Y?>? get getStreamListDouble {
    return getStreamListModel;
  }

  Y? get getListDouble {
    return getListModel;
  }

  set setListDouble(Y? listDouble) {
    setListModel = listDouble;
  }

  void notifyStreamListDouble() {
    notifyStreamListModel();
  }
}