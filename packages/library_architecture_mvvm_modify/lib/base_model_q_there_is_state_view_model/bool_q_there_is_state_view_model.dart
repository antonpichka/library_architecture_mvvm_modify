import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

/// An example of the extends of the "BaseModelQThereIsStateViewModel" class, named BoolQThereIsStateViewModel
class BoolQThereIsStateViewModel<T extends Bool,Y extends ListBool<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  BoolQThereIsStateViewModel(super.iInitializedStreamModel);

  /// The purpose of this method is to force IStreamModel to override your implementation and call your methods.
  /// Example:
  /// DefaultStreamModel<T,Y>? get getIStreamBool {
  //    return getIStreamModel;
  //  }
  IStreamModel<T,Y>? get getIStreamBool {
    return getIStreamModel;
  }

  /// Get a future Bool from IStreamModel
  Future<T?> get getFutureBool {
    return getFutureModel;
  }

  /// Get a stream Bool from IStreamModel
  Stream<T?>? get getStreamBool {
    return getStreamModel;
  }

  /// Get a Bool from IStreamModel
  T? get getBool {
    return getModel;
  }

  /// Set a Bool from IStreamModel
  set setBool(T? bool) {
    setModel = bool;
  }

  /// Notify stream Bool from IStreamModel
  void notifyStreamBool() {
    notifyStreamModel();
  }

  /// Get a future ListBool from IStreamModel
  Future<Y?> get getFutureListBool {
    return getFutureListModel;
  }

  /// Get a stream ListBool from IStreamModel
  Stream<Y?>? get getStreamListBool {
    return getStreamListModel;
  }

  /// Get a ListBool from IStreamModel
  Y? get getListBool {
    return getListModel;
  }

  /// Set a ListBool from IStreamModel
  set setListBool(Y? listBool) {
    setListModel = listBool;
  }

  /// Notify stream ListBool from IStreamModel
  void notifyStreamListBool() {
    notifyStreamListModel();
  }
}