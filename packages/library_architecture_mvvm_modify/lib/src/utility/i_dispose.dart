import 'package:meta/meta.dart';

/// Frees up device resources
/// Where to use ? - use in 'NamedViewModel','NamedStreamWState','NamedView' classes
@immutable
abstract interface class IDispose {
  /// No initialize the parameters
  /// Where to use ? - here
  const IDispose();

  /// Frees up device resources
  /// Where to use ? - use in 'NamedViewModel','NamedStreamWState','NamedView' classes
  void dispose();
}
