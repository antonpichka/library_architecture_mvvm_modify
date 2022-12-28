import 'package:flutter/material.dart';

const constBaseUrlOpenMeteoApi = 'api.open-meteo.com';
const constBaseUrlGeocodingOpenMeteoApi = 'geocoding-api.open-meteo.com';
const constDefaultColor = Color(0xFF2196F3);
const constSettingsView = "settingsView";
const constSearchView = "searchView";

extension on double {
  double toFahrenheit() => (this * 9 / 5) + 32;
  double toCelsius() => (this - 32) * 5 / 9;
}
