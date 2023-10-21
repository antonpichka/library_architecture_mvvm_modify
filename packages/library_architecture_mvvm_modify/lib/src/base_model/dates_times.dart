import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class DatesTimes extends BaseModel {
  final DateTime dateTime;

  const DatesTimes(this.dateTime) : super("$dateTime");

  @override
  DatesTimes get getClone => DatesTimes(dateTime);

  @override
  String toString() {
    return dateTime.toString();
  }
}
