import 'package:meta/meta.dart';

/// The purpose of this class is to provide your callback and your name
/// Where to use ? - use in 'RWTMode','NamedVM' classes
@immutable
final class NamedCallback {
  /// This is the callback name
  /// Where to use ? - use in 'RWTMode','NamedVM' classes
  final String name;

  /// This is a callback
  /// Where to use ? - use in 'RWTMode','NamedVM' classes
  final dynamic callback;

  /// Initialize the parameters 'name','callback'
  /// Where to use ? - use in 'NamedVM' class
  const NamedCallback(this.name, this.callback);
}
