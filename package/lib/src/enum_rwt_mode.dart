/// What kind of mod will it be ?
/// Where to use ? - use in 'BaseModelRepository','NamedVM' classes
enum EnumRWTMode {
  /// Release mod
  /// Where to use ? - use in 'BaseModelRepository','NamedVM' classes
  release,

  /// Test mod
  /// Where to use ? - use in 'BaseModelRepository','NamedVM' classes
  test;

  /// No initialize the parameters
  /// Where to use ? - use in 'BaseModelRepository','NamedVM' classes
  const EnumRWTMode();
}