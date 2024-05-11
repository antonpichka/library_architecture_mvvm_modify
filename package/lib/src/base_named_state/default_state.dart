import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// This class has a object state 'DataForNamed'. Which is part of 'NamedVM'
/// Where to use ? - use in 'NamedVM' class
@immutable
final class DefaultState<T extends BaseDataForNamed<Enum>>
    extends BaseNamedState<T> {
  /// Object 'DataForNamed'
  /// Where to use ? - here
  final T _dataForNamed;

  /// Initialize the parameters '_dataForNamed'
  /// Where to use ? - use in 'NamedVM' class
  const DefaultState(this._dataForNamed);

  /// Frees up device resources
  /// Where to use ? - use in 'NamedVM' class
  @override
  void dispose() {}

  /// Get 'DataForNamed'
  /// Where to use ? - use in 'NamedVM' class
  @override
  T get getDataForNamed => _dataForNamed;
}
