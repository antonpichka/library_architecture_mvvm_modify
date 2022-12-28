import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

enum TemperatureUnits {
  fahrenheit,
  celsius
}

class Temperature
    extends BaseModel
{
  @protected
  double? value;
  @protected
  TemperatureUnits? temperatureUnits;

  Temperature.success(this.value,this.temperatureUnits) : super.success(value?.toString());
  Temperature.exception(super.exception) : super.exception();
  factory Temperature.fromDouble(double? value) => Temperature.success(value,null);

  static Temperature get getTemperatureForSuccess => Temperature.success(0.0,TemperatureUnits.celsius);

  @nonVirtual
  double? get getParameterValue => value!;

  String? get getOneParametersNamedForMainView {
    return '''${value?.toStringAsPrecision(2)}°${(isOneParametersNamedForGetOneParametersNamedForMainView() ?? true) ? 'C' : 'F'}''';
  }

  @protected
  bool? isOneParametersNamedForGetOneParametersNamedForMainView() {
    return temperatureUnits == TemperatureUnits.celsius;
  }
}