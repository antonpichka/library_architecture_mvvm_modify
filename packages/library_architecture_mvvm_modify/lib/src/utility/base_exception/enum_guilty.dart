/// Who is to blame for my troubles?
/// Where to use ? - use in 'LocalException','NamedService','OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService','NamedStreamWState','NamedState' classes
enum EnumGuilty {
  /// Developer it's all your fault
  /// Where to use ? - use in 'LocalException','NamedService','OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService','NamedStreamWState','NamedState' classes
  developer,

  /// Device it's all your fault
  /// Where to use ? - use in 'LocalException','NamedService','OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService','NamedStreamWState','NamedState' classes
  device,

  /// User it's all your fault
  /// Where to use ? - use in 'LocalException','NamedService','OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService','NamedStreamWState','NamedState' classes
  user;

  /// No initialize the parameters
  /// Where to use ? - use in 'LocalException','NamedService','OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService','NamedStreamWState','NamedState' classes
  const EnumGuilty();
}
