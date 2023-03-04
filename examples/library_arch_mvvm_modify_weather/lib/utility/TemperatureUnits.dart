import 'package:hive/hive.dart';

@HiveType(typeId: 1)
enum TemperatureUnits {
  @HiveField(0)
  fahrenheit,
  @HiveField(1)
  celsius
}
