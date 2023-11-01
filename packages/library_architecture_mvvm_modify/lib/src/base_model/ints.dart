import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// Ints
/// Where to use ? - anywhere
@immutable
base class Ints extends BaseModel {
  /// This parameter is a unique identifier
  /// Where to use ? - anywhere
  final int field;

  /// Initialize the parameter 'field'
  /// Where to use ? - anywhere
  const Ints(this.field) : super("$field");

  /// Sometimes you need to clone an object to avoid creating references
  /// Where to use ? - anywhere
  @override
  Ints get getClone => Ints(field);

  /// Necessary method to show the result to the developer
  /// Where to use ? - anywhere
  @override
  String toString() {
    return "Ints(field: $field)";
  }
}
