import 'dart:async';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// This class has a stream and object state 'DataForNamed'. Which is part of 'NamedViewModel'
/// Where to use ? - use in 'NamedViewModel' class
@immutable
final class DefaultStreamWState<T extends BaseDataForNamed<Enum>>
    extends BaseNamedStreamWState<T> {
  /// Object 'DataForNamed'
  /// Where to use ? - here
  final T _dataForNamed;

  /// StreamController 'DataForNamed'
  /// Where to use ? - here
  final StreamController<T> _streamControllerWDataForNamed;

  /// Initialize the parameters '_dataForNamed', '_streamControllerWDataForNamed'
  /// Where to use ? - use in 'NamedViewModel' class
  DefaultStreamWState(this._dataForNamed)
      : _streamControllerWDataForNamed = StreamController<T>.broadcast();

  /// Frees up device resources
  /// Where to use ? - use in 'NamedViewModel' class
  @override
  void dispose() {
    if (_streamControllerWDataForNamed.isClosed) {
      return;
    }
    _streamControllerWDataForNamed.close();
  }

  /// Get stream 'DataForNamed'
  /// Where to use ? - use in 'NamedViewModel' class
  @override
  Stream<T> get getStreamDataForNamed => _streamControllerWDataForNamed.stream;

  /// Get 'DataForNamed'
  /// Where to use ? - use in 'NamedViewModel' class
  @override
  T get getDataForNamed => _dataForNamed;

  /// Notify the stream about new data 'DataForNamed'
  /// Where to use ? - use in 'NamedViewModel' class
  @override
  void notifyStreamDataForNamed() {
    if (!_streamControllerWDataForNamed.hasListener) {
      throw LocalException(
          this,
          EnumGuilty.developer,
          "DefaultStreamWStateQQNotifyStreamDataForNamed",
          "stream has no listener");
    }
    if (_streamControllerWDataForNamed.isClosed) {
      throw LocalException(this,
          EnumGuilty.developer,
          "DefaultStreamWStateQQNotifyStreamDataForNamedFIRST",
          "stream closed");
    }
    _streamControllerWDataForNamed.sink.add(_dataForNamed);
  }
}
