import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

final class DefaultStreamWState<T extends BaseDataForNamed<Enum>>
    extends BaseNamedStreamWState<T> {
  final T _dataForNamed;
  bool _isDispose = false;
  void Function(T event)? _callback;

  DefaultStreamWState(this._dataForNamed);

  @override
  T get getDataForNamed => _dataForNamed;

  @override
  void dispose() {
    if (_isDispose) {
      return;
    }
    _isDispose = true;
    _callback = null;
  }

  @override
  void listenStreamDataForNamedFromCallback(void Function(T event) callback) {
    if (_isDispose) {
      throw LocalException(
          this,
          EnumGuilty.developer,
          "DefaultStreamWStateQQListenStreamDataWNamedWCallback",
          "Already disposed of");
    }
    if (this._callback != null) {
      throw LocalException(this, EnumGuilty.developer,
          "DefaultStreamWStateQQListenStreamDataWNamedWCallback", "Duplicate");
    }
    this._callback = callback;
  }

  @override
  void notifyStreamDataForNamed() {
    if (_isDispose) {
      throw LocalException(this, EnumGuilty.developer,
          "DefaultStreamWStateQQNotifyStreamDataWNamed", "Already disposed of");
    }
    if (_callback == null) {
      throw LocalException(
          this,
          EnumGuilty.developer,
          "DefaultStreamWStateQQNotifyStreamDataWNamed",
          "Stream has no listener");
    }
    _callback!(_dataForNamed);
  }
}
