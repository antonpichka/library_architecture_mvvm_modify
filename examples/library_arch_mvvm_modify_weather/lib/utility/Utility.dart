import 'package:flutter/material.dart';

const constBaseUrlOpenMeteoApi = 'api.open-meteo.com';
const constBaseUrlGeocodingOpenMeteoApi = 'geocoding-api.open-meteo.com';
const constDefaultColor = Color(0xFF2196F3);

extension on double {
  double toFahrenheit() => (this * 9 / 5) + 32;
  double toCelsius() => (this - 32) * 5 / 9;
}

extension on Color {
  Color brighten([int percent = 10]) {
    assert(
    1 <= percent && percent <= 100,
    'percentage must be between 1 and 100',
    );
    final p = percent / 100;
    return Color.fromARGB(
      alpha,
      red + ((255 - red) * p).round(),
      green + ((255 - green) * p).round(),
      blue + ((255 - blue) * p).round(),
    );
  }
}
