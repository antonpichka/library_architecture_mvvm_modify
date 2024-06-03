import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

/// This class has a stream and object state 'DataForNamed'. Which is part of 'NamedVM'
/// Where to use ? - use in 'NamedVM' class
final class DefaultStreamWState<T extends BaseDataForNamed<Enum>> extends BaseNamedStreamWState<T> {
  /// Object 'DataForNamed'
  /// Where to use ? - here
  final T _dataForNamed;

  /// Required to close streams
  /// Where to use ? - here
  bool _isDispose = false;

  /// Will notify you about changes
  /// Where to use ? - here
  void Function(T event)? _callback;

  /// Initialize the parameter '_dataForNamed'
  /// Where to use ? - use in 'NamedVM' class
  DefaultStreamWState(this._dataForNamed);

  /// Frees up device resources
  /// Where to use ? - use in 'NamedVM' class
  @override
  void dispose() {
    if(_isDispose) {
      return;
    }
    _isDispose = true;
    _callback = null;
  }

  /// Get 'DataForNamed'
  /// Where to use ? - use in 'NamedVM' class
  @override
  T get getDataForNamed => _dataForNamed;

  /// Register a listener
  /// Where to use ? - use in 'NamedVM' class
  @override
  void listenStreamDataForNamedFromCallback(void Function(T event) callback) {
    if (_isDispose) {
      throw LocalException(this, EnumGuilty.developer, "DefaultStreamWStateQQListenStreamDataForNamedFromCallback", "Already disposed of");
    }
    if(this._callback != null) {
      throw LocalException(this,EnumGuilty.developer,"DefaultStreamWStateQQListenStreamDataForNamedFromCallback","Duplicate");
    }
    this._callback = callback;
  }

  /// Notify the stream about new data 'DataForNamed'
  /// Where to use ? - use in 'NamedVM' class
  @override
  void notifyStreamDataForNamed() {
    if (_isDispose) {
      throw LocalException(this, EnumGuilty.developer, "DefaultStreamWStateQQNotifyStreamDataForNamed", "Already disposed of");
    }
    if (_callback == null) {
      throw LocalException(this, EnumGuilty.developer, "DefaultStreamWStateQQNotifyStreamDataForNamed", "Stream has no listener");
    }
    _callback!(_dataForNamed);
  }
}
