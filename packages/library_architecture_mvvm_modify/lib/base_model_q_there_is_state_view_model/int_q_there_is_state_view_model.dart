import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

/// An example of the extends of the "BaseModelQThereIsStateViewModel" class, named IntQThereIsStateViewModel
class IntQThereIsStateViewModel<T extends Int, Y extends ListInt<T>>
    extends BaseModelQThereIsStateViewModel<T, Y> {
  IntQThereIsStateViewModel(super.iInitializedStreamModel);

  /// The purpose of this method is to force IStreamModel to override your implementation and call your methods.
  /// Example:
  /// DefaultStreamModel<T,Y>? get getIStreamInt {
  //    return getIStreamModel;
  //  }
  IStreamModel<T, Y>? get getIStreamInt {
    return getIStreamModel;
  }

  /// Get a future Int from IStreamModel
  Future<T?> get getFutureInt {
    return getFutureModel;
  }

  /// Get a stream Int from IStreamModel
  Stream<T?>? get getStreamInt {
    return getStreamModel;
  }

  /// Get a Int from IStreamModel
  T? get getInt {
    return getModel;
  }

  /// Set a Int from IStreamModel
  set setInt(T? int) {
    setModel = int;
  }

  /// Notify stream Int from IStreamModel
  void notifyStreamInt() {
    notifyStreamModel();
  }

  /// Get a future ListInt from IStreamModel
  Future<Y?> get getFutureListInt {
    return getFutureListModel;
  }

  /// Get a stream ListInt from IStreamModel
  Stream<Y?>? get getStreamListInt {
    return getStreamListModel;
  }

  /// Get a ListInt from IStreamModel
  Y? get getListInt {
    return getListModel;
  }

  /// Set a ListInt from IStreamModel
  set setListInt(Y? listInt) {
    setListModel = listInt;
  }

  /// Notify stream ListInt from IStreamModel
  void notifyStreamListInt() {
    notifyStreamListModel();
  }
}
