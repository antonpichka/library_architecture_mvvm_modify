import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class BoolQThereIsStateViewModel<T extends Bool,Y extends ListBool<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  BoolQThereIsStateViewModel(super.iInitializedStreamModel);

  IStreamModel<T,Y>? get getIStreamBool {
    return getIStreamModel;
  }

  Future<T?> get getFutureBool {
    return getFutureModel;
  }

  Stream<T?>? get getStreamBool {
    return getStreamModel;
  }

  T? get getBool {
    return getModel;
  }

  set setBool(T? bool) {
    setModel = bool;
  }

  void notifyStreamBool() {
    notifyStreamModel();
  }

  Future<Y?> get getFutureListBool {
    return getFutureListModel;
  }

  Stream<Y?>? get getStreamListBool {
    return getStreamListModel;
  }

  Y? get getListBool {
    return getListModel;
  }

  set setListBool(Y? listBool) {
    setListModel = listBool;
  }

  void notifyStreamListBool() {
    notifyStreamListModel();
  }
}