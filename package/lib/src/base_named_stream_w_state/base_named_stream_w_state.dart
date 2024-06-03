import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

/// This class has a stream and object state 'DataForNamed'. Which is part of 'NamedVM'
/// Where to use ? - use in 'NamedVM' class
abstract base class BaseNamedStreamWState<T extends BaseDataForNamed>
    implements IDispose {
  /// No initialize the parameters
  /// Where to use ? - use in 'NamedVM' class
  const BaseNamedStreamWState();

  /// Get 'DataForNamed'
  /// Where to use ? - use in 'NamedVM' class
  T get getDataForNamed;

  /// Register a listener
  /// Where to use ? - use in 'NamedVM' class
  void listenStreamDataForNamedFromCallback(void Function(T event) callback);

  /// Notify the stream about new data 'DataForNamed'
  /// Where to use ? - use in 'NamedVM' class
  void notifyStreamDataForNamed();
}
