import 'dart:async';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

final class DefaultStreamStateQDataForNamed<T extends BaseDataForNamed>
    extends BaseNamedStreamStateQDataForNamed<T> {
  final StreamController<T> _streamControllerForDataForNamed;
  T? _dataForNamed;
  StreamSubscription<T>? _streamSubscriptionForDataForNamed;

  DefaultStreamStateQDataForNamed(this._dataForNamed)
      : _streamControllerForDataForNamed = StreamController<T>.broadcast();

  @override
  void dispose() {
    _streamSubscriptionForDataForNamed?.cancel();
    if (!_streamControllerForDataForNamed.isClosed) {
      _streamControllerForDataForNamed.close();
    }
  }

  @override
  Stream<T?> get getStreamDataForNamed =>
      _streamControllerForDataForNamed.stream;

  @override
  T? get getDataForNamed => _dataForNamed;

  @override
  set setDataForNamed(T dataForNamed) {
    _dataForNamed = dataForNamed;
  }

  @override
  void notifyStreamDataForNamed() {
    if (!_streamControllerForDataForNamed.hasListener) {
      throw LocalException(
          this,
          EnumGuiltyForLocalException.developer,
          KeysException
              .defaultStreamStateQDataForNamedQWhereLocalExceptionGuiltyDeveloperStream,
          "stream has no listener");
    }
    if (_streamControllerForDataForNamed.isClosed) {
      throw LocalException(
          this,
          EnumGuiltyForLocalException.developer,
          KeysException
              .defaultStreamStateQDataForNamedQWhereLocalExceptionGuiltyDeveloperStream,
          "stream closed");
    }
    _streamControllerForDataForNamed.sink.add(_dataForNamed!);
  }

  void listensStreamDataForNamed(Function(T event) callback) {
    _streamSubscriptionForDataForNamed =
        _streamControllerForDataForNamed.stream.listen((event) {
      callback(event);
    });
  }

  void resumeStreamSubscriptionDataForNamed() {
    if (!_streamSubscriptionForDataForNamed!.isPaused) {
      return;
    }
    _streamSubscriptionForDataForNamed?.resume();
  }

  void pauseStreamSubscriptionDataForNamed() {
    if (_streamSubscriptionForDataForNamed!.isPaused) {
      return;
    }
    _streamSubscriptionForDataForNamed?.pause();
  }
}