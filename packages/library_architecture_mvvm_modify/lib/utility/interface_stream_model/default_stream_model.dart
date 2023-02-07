import 'dart:async';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

/// An example of the implementation of the "IStreamModel" class, named DefaultStreamModel
class DefaultStreamModel<T extends BaseModel, Y extends BaseListModel<T>>
    implements IStreamModel<T, Y> {
  final StreamController<T>? _streamControllerForModel;
  final StreamController<Y>? _streamControllerForListModel;
  T? _model;
  Y? _listModel;
  StreamSubscription<T>? _streamSubscriptionForModel;
  StreamSubscription<Y>? _streamSubscriptionForListModel;

  DefaultStreamModel(this._model, this._listModel)
      : _streamControllerForModel = StreamController<T>.broadcast(),
        _streamControllerForListModel = StreamController<Y>.broadcast();

  @override
  void dispose() {
    _streamSubscriptionForModel?.cancel();
    _streamSubscriptionForListModel?.cancel();
    if (!_streamControllerForModel!.isClosed) {
      _streamControllerForModel?.close();
    }
    if (!_streamControllerForListModel!.isClosed) {
      _streamControllerForListModel?.close();
    }
  }

  /// Get a stream Model
  @override
  Stream<T?> get getStreamModel => _streamControllerForModel!.stream;

  /// Get a stream ListModel
  @override
  Stream<Y?> get getStreamListModel => _streamControllerForListModel!.stream;

  /// Get a Model
  @override
  T? get getModel => _model;

  /// Get a ListModel
  @override
  Y? get getListModel => _listModel;

  /// Set a Model
  @override
  set setModel(T? model) {
    _model = model;
  }

  /// Set a ListModel
  @override
  set setListModel(Y? listModel) {
    _listModel = listModel;
  }

  /// Notify stream Model
  @override
  void notifyStreamModel() {
    if (!_streamControllerForModel!.hasListener) {
      throw LocalException(this, EnumGuiltyForLocalException.developer,
          "stream has no listener");
    }
    if (_streamControllerForModel!.isClosed) {
      throw LocalException(
          this, EnumGuiltyForLocalException.developer, "stream closed");
    }
    _streamControllerForModel?.sink.add(_model!);
  }

  /// Notify stream ListModel
  @override
  void notifyStreamListModel() {
    if (!_streamControllerForListModel!.hasListener) {
      throw LocalException(this, EnumGuiltyForLocalException.developer,
          "stream has no listener");
    }
    if (_streamControllerForListModel!.isClosed) {
      throw LocalException(
          this, EnumGuiltyForLocalException.developer, "stream closed");
    }
    _streamControllerForListModel?.sink.add(_listModel!);
  }

  /// Listens stream Model
  void listensStreamModel(Function(T event) callback) {
    _streamSubscriptionForModel =
        _streamControllerForModel!.stream.listen((event) {
      callback(event);
    });
  }

  /// Listens stream ListModel
  void listensStreamListModel(Function(Y event) callback) {
    _streamSubscriptionForListModel =
        _streamControllerForListModel!.stream.listen((event) {
      callback(event);
    });
  }

  /// Resume stream subscription for Model
  void resumeStreamSubscriptionForModel() {
    if (!_streamSubscriptionForModel!.isPaused) {
      return;
    }
    _streamSubscriptionForModel?.resume();
  }

  /// Resume stream subscription for ListModel
  void resumeStreamSubscriptionForListModel() {
    if (!_streamSubscriptionForListModel!.isPaused) {
      return;
    }
    _streamSubscriptionForListModel?.resume();
  }

  /// Pause stream subscription for Model
  void pauseStreamSubscriptionForModel() {
    if (_streamSubscriptionForModel!.isPaused) {
      return;
    }
    _streamSubscriptionForModel?.pause();
  }

  /// Pause stream subscription for ListModel
  void pauseStreamSubscriptionForListModel() {
    if (_streamSubscriptionForListModel!.isPaused) {
      return;
    }
    _streamSubscriptionForListModel?.pause();
  }
}
