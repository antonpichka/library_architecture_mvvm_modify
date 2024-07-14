import 'package:meta/meta.dart';

/// Provides certain data, takes it from the class 'ModelRepository'
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

  /// Standard method required for testing
  /// Where to use ? - anywhere
  @override
  String toString();
}
