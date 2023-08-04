import 'dart:async';
import 'package:library_architecture_mvvm_modify/base_data_for_named_widget_or_view/base_data_for_named_widget_or_view.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_state_data_for_named_widget_or_view/i_stream_state_data_for_named_widget_or_view.dart';

/// An example of the implementation of the "IStreamStateDataForNamedWidgetOrView" class, named DefaultStreamStateDataForNamedWidgetOrView
final class DefaultStreamStateDataForNamedWidgetOrView<T extends BaseDataForNamedWidgetOrView>
    implements IStreamStateDataForNamedWidgetOrView<T>
{
  final StreamController<T> _streamControllerForDataForNamedWidgetOrView;
  T? _dataForNamedWidgetOrView;
  StreamSubscription<T>? _streamSubscriptionForDataForNamedWidgetOrView;

  DefaultStreamStateDataForNamedWidgetOrView(this._dataForNamedWidgetOrView)
      : _streamControllerForDataForNamedWidgetOrView = StreamController<T>.broadcast();

  @override
  void dispose() {
    _streamSubscriptionForDataForNamedWidgetOrView?.cancel();
    if (!_streamControllerForDataForNamedWidgetOrView.isClosed) {
      _streamControllerForDataForNamedWidgetOrView.close();
    }
  }

  /// Get a stream DataForNamedWidgetOrView
  @override
  Stream<T?> get getStreamDataForNamedWidgetOrView => _streamControllerForDataForNamedWidgetOrView.stream;

  /// Get a DataForNamedWidgetOrView
  @override
  T? get getDataForNamedWidgetOrView => _dataForNamedWidgetOrView;

  /// Set a DataForNamedWidgetOrView
  @override
  set setDataForNamedWidgetOrView(T? dataForNamedWidgetOrView) {
    _dataForNamedWidgetOrView = dataForNamedWidgetOrView;
  }

  /// Notify stream DataForNamedWidgetOrView
  @override
  void notifyStreamDataForNamedWidgetOrView() {
    if (!_streamControllerForDataForNamedWidgetOrView.hasListener) {
      throw LocalException(this, EnumGuiltyForLocalException.developer, "stream has no listener");
    }
    if (_streamControllerForDataForNamedWidgetOrView.isClosed) {
      throw LocalException(this, EnumGuiltyForLocalException.developer, "stream closed");
    }
    _streamControllerForDataForNamedWidgetOrView.sink.add(_dataForNamedWidgetOrView!);
  }

  /// Listens stream DataForNamedWidgetOrView
  void listensStreamDataForNamedWidgetOrView(Function(T event) callback) {
    _streamSubscriptionForDataForNamedWidgetOrView =
        _streamControllerForDataForNamedWidgetOrView.stream.listen((event) {
          callback(event);
        });
  }

  /// Resume stream subscription for DataForNamedWidgetOrView
  void resumeStreamSubscriptionDataForNamedWidgetOrView() {
    if (!_streamSubscriptionForDataForNamedWidgetOrView!.isPaused) {
      return;
    }
    _streamSubscriptionForDataForNamedWidgetOrView?.resume();
  }

  /// Pause stream subscription for DataForNamedWidgetOrView
  void pauseStreamSubscriptionDataForNamedWidgetOrView() {
    if (_streamSubscriptionForDataForNamedWidgetOrView!.isPaused) {
      return;
    }
    _streamSubscriptionForDataForNamedWidgetOrView?.pause();
  }
}
