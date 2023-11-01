import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// Bools
/// Where to use ? - anywhere
@immutable
base class Bools extends BaseModel {
  /// This parameter is a unique identifier
  /// Where to use ? - anywhere
  final bool isField;

  /// Initialize the parameter 'isField'
  /// Where to use ? - anywhere
  const Bools(this.isField) : super("$isField");

  /// Sometimes you need to clone an object to avoid creating references
  /// Where to use ? - anywhere
  @override
  Bools get getClone => Bools(isField);

  /// Necessary method to show the result to the developer
  /// Where to use ? - anywhere
  @override
  String toString() {
    return "Bools(isField: $isField)";
  }
}
