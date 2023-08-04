import 'dart:async';
import 'package:library_architecture_mvvm_modify/base_data_for_named_widget_or_view/base_data_for_named_widget_or_view.dart';
import 'package:library_architecture_mvvm_modify/base_data_for_named_widget_or_view/interface_initialized_stream_state_data_for_named_widget_or_view/i_initialized_stream_state_data_for_named_widget_or_view.dart';
import 'package:library_architecture_mvvm_modify/utility/i_dispose.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_state_data_for_named_widget_or_view/i_stream_state_data_for_named_widget_or_view.dart';
import 'package:meta/meta.dart';

/// This class is needed to manage the state of the DataForNamedWidgetOrView and streams,
abstract base class BaseDataForNamedWidgetOrViewQThereIsStreamStateViewModel<T extends BaseDataForNamedWidgetOrView>
    implements IDispose
{
  final IStreamStateDataForNamedWidgetOrView<T> _iStreamStateDataForNamedWidgetOrView;

  BaseDataForNamedWidgetOrViewQThereIsStreamStateViewModel(
      IInitializedStreamStateDataForNamedWidgetOrView<T> iInitializedStreamStateDataForNamedWidgetOrView)
      : _iStreamStateDataForNamedWidgetOrView = iInitializedStreamStateDataForNamedWidgetOrView.getStreamStateDataForNamedWidgetOrView;

  /// The purpose of the method is to release resources
  @override
  void dispose() {
    _iStreamStateDataForNamedWidgetOrView.dispose();
  }

  /// The purpose of this method is to force IStreamStateDataForNamedWidgetOrView to override your implementation and call your methods.
  @nonVirtual
  IStreamStateDataForNamedWidgetOrView<T>? get getIStreamStateDataForNamedWidgetOrView {
    return _iStreamStateDataForNamedWidgetOrView;
  }

  /// Get a future DataForNamedWidgetOrView from IStreamStateDataForNamedWidgetOrView
  @nonVirtual
  Future<T?> get getFutureDataForNamedWidgetOrView async {
    return _iStreamStateDataForNamedWidgetOrView.getDataForNamedWidgetOrView;
  }

  /// Get a stream DataForNamedWidgetOrView from IStreamStateDataForNamedWidgetOrView
  @nonVirtual
  Stream<T?>? get getStreamDataForNamedWidgetOrView {
    return _iStreamStateDataForNamedWidgetOrView.getStreamDataForNamedWidgetOrView;
  }

  /// Get a DataForNamedWidgetOrView from IStreamStateDataForNamedWidgetOrView
  @nonVirtual
  T? get getDataForNamedWidgetOrView {
    return _iStreamStateDataForNamedWidgetOrView.getDataForNamedWidgetOrView;
  }

  /// Set a DataForNamedWidgetOrView from IStreamStateDataForNamedWidgetOrView
  @nonVirtual
  set setDataForNamedWidgetOrView(T? dataForNamedWidgetOrView) {
    _iStreamStateDataForNamedWidgetOrView.setDataForNamedWidgetOrView = dataForNamedWidgetOrView;
  }

  /// Notify stream DataForNamedWidgetOrView from IStreamStateDataForNamedWidgetOrView
  @nonVirtual
  void notifyStreamDataForNamedWidgetOrView() {
    _iStreamStateDataForNamedWidgetOrView.notifyStreamDataForNamedWidgetOrView();
  }
}
