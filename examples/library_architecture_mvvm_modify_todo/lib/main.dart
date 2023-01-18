import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/named_service/sqflite_service.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view/app_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SqfliteService().getDatabase;
  runApp(AppView());
}
