import 'package:library_architecture_mvvm_modify/base_model/double.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_double.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

/// An example of the extends of the "BaseModelQThereIsStateViewModel" class, named DoubleQThereIsStateViewModel
base class DoubleQThereIsStateViewModel<T extends Double,
    Y extends ListDouble<T>> extends BaseModelQThereIsStateViewModel<T, Y> {
  DoubleQThereIsStateViewModel(super.iInitializedStreamModel);

  /// The purpose of this method is to force IStreamModel to override your implementation and call your methods.
  /// Example:
  /// DefaultStreamModel<T,Y>? get getIStreamDouble {
  //    return getIStreamModel;
  //  }
  IStreamModel<T, Y>? get getIStreamDouble {
    return getIStreamModel;
  }

  /// Get a future Double from IStreamModel
  Future<T?> get getFutureDouble {
    return getFutureModel;
  }

  /// Get a stream Double from IStreamModel
  Stream<T?>? get getStreamDouble {
    return getStreamModel;
  }

  /// Get a Double from IStreamModel
  T? get getDouble {
    return getModel;
  }

  /// Set a Double from IStreamModel
  set setDouble(T? double) {
    setModel = double;
  }

  /// Notify stream Double from IStreamModel
  void notifyStreamDouble() {
    notifyStreamModel();
  }

  /// Get a future ListDouble from IStreamModel
  Future<Y?> get getFutureListDouble {
    return getFutureListModel;
  }

  /// Get a stream ListDouble from IStreamModel
  Stream<Y?>? get getStreamListDouble {
    return getStreamListModel;
  }

  /// Get a ListDouble from IStreamModel
  Y? get getListDouble {
    return getListModel;
  }

  /// Set a ListDouble from IStreamModel
  set setListDouble(Y? listDouble) {
    setListModel = listDouble;
  }

  /// Notify stream ListDouble from IStreamModel
  void notifyStreamListDouble() {
    notifyStreamListModel();
  }
}
