import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// This class has a stream and object state 'DataForNamed'. Which is part of 'NamedVM'
/// Where to use ? - use in 'NamedVM' class
@immutable
abstract base class BaseNamedStreamWState<T extends BaseDataForNamed>
    implements IDispose {
  /// No initialize the parameters
  /// Where to use ? - use in 'NamedVM' class
  const BaseNamedStreamWState();

  /// Get stream 'DataForNamed'
  /// Where to use ? - use in 'NamedVM' class
  Stream<T> get getStreamDataForNamed;

  /// Get 'DataForNamed'
  /// Where to use ? - use in 'NamedVM' class
  T get getDataForNamed;

  /// Notify the stream about new data 'DataForNamed'
  /// Where to use ? - use in 'NamedVM' class
  void notifyStreamDataForNamed();
}
