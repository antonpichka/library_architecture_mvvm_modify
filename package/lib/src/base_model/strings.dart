import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// Strings
/// Where to use ? - anywhere
@immutable
base class Strings extends BaseModel {
  /// This parameter is a unique identifier
  /// Where to use ? - anywhere
  final String field;

  /// Initialize the parameter 'field'
  /// Where to use ? - anywhere
  const Strings(this.field) : super(field);

  /// Sometimes you need to clone an object to avoid creating references
  /// Where to use ? - anywhere
  @override
  Strings get getClone => Strings(field);

  /// Necessary method to show the result to the developer
  /// Where to use ? - anywhere
  @override
  String toString() {
    return "Strings(field: $field)";
  }
}
