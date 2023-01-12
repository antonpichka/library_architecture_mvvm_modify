import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/model/location/Location.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherSettings/WeatherSettings.dart';

const constBaseUrlOpenMeteoApi = 'api.open-meteo.com';
const constBaseUrlGeocodingOpenMeteoApi = 'geocoding-api.open-meteo.com';
const constDefaultColor = Color(0xFF2196F3);
const constSettingsView = "settingsView";
const constSearchWeatherView = "searchWeatherView";
const constArgumentSettingsView = "argumentSettingsView";

WeatherSettings? cloneWeatherSettings(WeatherSettings weatherSettings) {
  final location = Location.success(
      weatherSettings.weather?.location?.id,
      weatherSettings.weather?.location?.name,
      weatherSettings.weather?.location?.latitude,
      weatherSettings.weather?.location?.longitude);
  final weather = Weather.success(
      location,
      weatherSettings.weather?.weatherCode,
      weatherSettings.weather?.temperature,
      weatherSettings.weather?.lastUpdated);
  final settings = Settings.success(
      weatherSettings.settings?.color,
      weatherSettings.settings?.temperatureUnits);
  return WeatherSettings.success(weather,settings);
}

Settings? cloneSettings(Settings settings) {
  return Settings.success(settings.color,settings.temperatureUnits);
}