import 'dart:async';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

/// An example of the implementation of the "IStreamModel" class, named DefaultStreamModel
class DefaultStreamModel<T extends BaseModel,Y extends BaseListModel<T>>
    implements IStreamModel<T,Y>
{
  final StreamController<T>? _streamControllerForModel;
  final StreamController<Y>? _streamControllerForListModel;
  T? _model;
  Y? _listModel;
  StreamSubscription<T>? _streamSubscriptionForModel;
  StreamSubscription<Y>? _streamSubscriptionForListModel;

  DefaultStreamModel(
      this._model,
      this._listModel)
      : _streamControllerForModel = StreamController<T>.broadcast(),
        _streamControllerForListModel = StreamController<Y>.broadcast();


  @override
  void dispose() {
    _streamSubscriptionForModel?.cancel();
    _streamSubscriptionForListModel?.cancel();
    if(!_streamControllerForModel!.isClosed) {
      _streamControllerForModel?.close();
    }
    if(!_streamControllerForListModel!.isClosed) {
      _streamControllerForListModel?.close();
    }
  }

  @override
  Stream<T?> get getStreamModel => _streamControllerForModel!.stream;

  @override
  Stream<Y?> get getStreamListModel => _streamControllerForListModel!.stream;

  @override
  T? get getModel => _model;

  @override
  Y? get getListModel => _listModel;

  @override
  set setModel(T? model) {
    _model = model;
  }

  @override
  set setListModel(Y? listModel) {
    _listModel = listModel;
  }

  @override
  void notifyStreamModel() {
    if(!_streamControllerForModel!.hasListener) {
      throw LocalException(this,EnumGuiltyForLocalException.developer,"stream has no listener");
    }
    if(_streamControllerForModel!.isClosed) {
      throw LocalException(this,EnumGuiltyForLocalException.developer,"stream closed");
    }
    _streamControllerForModel
        ?.sink
        .add(_model!);
  }

  @override
  void notifyStreamListModel() {
    if(!_streamControllerForListModel!.hasListener) {
      throw LocalException(this,EnumGuiltyForLocalException.developer,"stream has no listener");
    }
    if(_streamControllerForListModel!.isClosed) {
      throw LocalException(this,EnumGuiltyForLocalException.developer,"stream closed");
    }
    _streamControllerForListModel
        ?.sink
        .add(_listModel!);
  }

  void listensStreamModel(
      Function(T event) callback)
  {
    _streamSubscriptionForModel = _streamControllerForModel
        !.stream
        .listen((event) {
          callback(event);
        });
  }

  void listensStreamListModel(
      Function(Y event) callback)
  {
    _streamSubscriptionForListModel = _streamControllerForListModel
        !.stream
        .listen((event) {
          callback(event);
        });
  }

  void resumeStreamSubscriptionForModel() {
    if(!_streamSubscriptionForModel!.isPaused) {
      return;
    }
    _streamSubscriptionForModel?.resume();
  }

  void resumeStreamSubscriptionForListModel() {
    if(!_streamSubscriptionForListModel!.isPaused) {
      return;
    }
    _streamSubscriptionForListModel?.resume();
  }

  void pauseStreamSubscriptionForModel() {
    if(_streamSubscriptionForModel!.isPaused) {
      return;
    }
    _streamSubscriptionForModel?.pause();
  }

  void pauseStreamSubscriptionForListModel() {
    if(_streamSubscriptionForListModel!.isPaused) {
      return;
    }
    _streamSubscriptionForListModel?.pause();
  }
}