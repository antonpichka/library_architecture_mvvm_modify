/// Frees up device resources
/// Where to use ? - use in 'NamedStreamWState','NamedState' classes
abstract interface class IDispose {
  /// No initialize the parameters
  /// Where to use ? - here
  const IDispose();

  /// Frees up device resources
  /// Where to use ? - use in 'NamedStreamWState','NamedState' classes
  void dispose();
}
