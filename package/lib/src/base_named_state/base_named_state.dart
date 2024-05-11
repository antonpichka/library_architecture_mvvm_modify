import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// This class has a object state 'DataForNamed'. Which is part of 'NamedVM'
/// Where to use ? - use in 'NamedVM' class
@immutable
abstract base class BaseNamedState<T extends BaseDataForNamed>
    implements IDispose {
  /// No initialize the parameters
  /// Where to use ? - use in 'NamedVM' class
  const BaseNamedState();

  /// Get 'DataForNamed'
  /// Where to use ? - use in 'NamedVM' class
  T get getDataForNamed;
}
