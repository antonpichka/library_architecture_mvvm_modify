import 'dart:async';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
final class DefaultStreamWState<T extends BaseDataForNamed<Enum>>
    extends BaseNamedStreamWState<T> {
  final T _dataForNamed;
  final StreamController<T> _streamControllerWDataForNamed;

  DefaultStreamWState(this._dataForNamed)
      : _streamControllerWDataForNamed = StreamController<T>.broadcast();

  @override
  void dispose() {
    if (_streamControllerWDataForNamed.isClosed) {
      return;
    }
    _streamControllerWDataForNamed.close();
  }

  @override
  Stream<T> get getStreamDataForNamed => _streamControllerWDataForNamed.stream;

  @override
  T get getDataForNamed => _dataForNamed;

  @override
  void notifyStreamDataForNamed() {
    if (!_streamControllerWDataForNamed.hasListener) {
      throw LocalException(
          this,
          EnumGuiltyForLocalException.developer,
          "DefaultStreamWStateQNotifyStreamDataForNamed",
          "stream has no listener");
    }
    if (_streamControllerWDataForNamed.isClosed) {
      throw LocalException(this, EnumGuiltyForLocalException.developer,
          "DefaultStreamWStateQNotifyStreamDataForNamed", "stream closed");
    }
    _streamControllerWDataForNamed.sink.add(_dataForNamed);
  }
}
