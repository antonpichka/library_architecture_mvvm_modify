import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// DatesTimes
/// Where to use ? - anywhere
@immutable
base class DatesTimes extends BaseModel {
  /// This parameter is a unique identifier
  /// Where to use ? - anywhere
  final DateTime dateTime;

  /// Initialize the parameter 'dateTime'
  /// Where to use ? - anywhere
  const DatesTimes(this.dateTime) : super("$dateTime");

  /// Sometimes you need to clone an object to avoid creating references
  /// Where to use ? - anywhere
  @override
  DatesTimes get getClone => DatesTimes(dateTime);

  /// Necessary method to show the result to the developer
  /// Where to use ? - anywhere
  @override
  String toString() {
    return "DatesTimes(dateTime: $dateTime)";
  }
}
