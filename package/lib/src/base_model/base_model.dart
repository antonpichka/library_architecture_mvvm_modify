import 'package:meta/meta.dart';

/// Provides certain data, takes it from the class 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService'
/// Where to use ? - anywhere
@immutable
abstract base class BaseModel {
  /// A parameter that makes the model object unique
  /// Where to use ? - anywhere
  final String uniqueId;

  /// Initialize the parameter 'uniqueId'
  /// Where to use ? - anywhere
  const BaseModel(this.uniqueId);

  /// Sometimes you need to clone an object to avoid creating references
  /// Where to use ? - anywhere
  BaseModel get getClone;
}
