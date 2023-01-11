import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/namedService/HiveService.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/AppView.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveService().initFlutterAndGetBoxModels();
  runApp(AppView());
}
