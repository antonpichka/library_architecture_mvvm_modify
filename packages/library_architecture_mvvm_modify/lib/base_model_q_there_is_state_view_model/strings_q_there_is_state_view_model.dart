import 'package:library_architecture_mvvm_modify/base_model/list_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

/// An example of the extends of the "BaseModelQThereIsStateViewModel" class, named StringsQThereIsStateViewModel
base class StringsQThereIsStateViewModel<T extends Strings,
    Y extends ListStrings<T>> extends BaseModelQThereIsStateViewModel<T, Y> {
  StringsQThereIsStateViewModel(super.iInitializedStreamModel);

  /// The purpose of this method is to force IStreamModel to override your implementation and call your methods.
  /// Example:
  /// DefaultStreamModel<T,Y>? get getIStreamStrings {
  //    return getIStreamModel;
  //  }
  IStreamModel<T, Y>? get getIStreamStrings {
    return getIStreamModel;
  }

  /// Get a future Strings from IStreamModel
  Future<T?> get getFutureStrings {
    return getFutureModel;
  }

  /// Get a stream Strings from IStreamModel
  Stream<T?>? get getStreamStrings {
    return getStreamModel;
  }

  /// Get a Strings from IStreamModel
  T? get getStrings {
    return getModel;
  }

  /// Set a Strings from IStreamModel
  set setStrings(T? strings) {
    setModel = strings;
  }

  /// Notify stream Strings from IStreamModel
  void notifyStreamStrings() {
    notifyStreamModel();
  }

  /// Get a future ListStrings from IStreamModel
  Future<Y?> get getFutureListStrings {
    return getFutureListModel;
  }

  /// Get a stream ListStrings from IStreamModel
  Stream<Y?>? get getStreamListStrings {
    return getStreamListModel;
  }

  /// Get a ListStrings from IStreamModel
  Y? get getListStrings {
    return getListModel;
  }

  /// Set a ListStrings from IStreamModel
  set setListStrings(Y? listInt) {
    setListModel = listInt;
  }

  /// Notify stream ListStrings from IStreamModel
  void notifyStreamListStrings() {
    notifyStreamListModel();
  }
}
