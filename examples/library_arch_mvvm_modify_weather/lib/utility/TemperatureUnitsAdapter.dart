import 'package:hive_flutter/adapters.dart';
import 'package:library_arch_mvvm_modify_weather/utility/TemperatureUnits.dart';

class TemperatureUnitsAdapter
    extends TypeAdapter<TemperatureUnits>
{
  @override
  final typeId = 1;

  @override
  TemperatureUnits read(BinaryReader reader) {
    return TemperatureUnits.values[reader.read() as int];
  }

  @override
  void write(BinaryWriter writer, TemperatureUnits obj) {
    writer.write(obj.index);
  }

}