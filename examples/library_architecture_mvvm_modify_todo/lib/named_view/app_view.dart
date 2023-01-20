import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify_todo/l10n/l10n.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view/add_note_view.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view/main_view.dart';
import 'package:library_architecture_mvvm_modify_todo/utility/flutter_theme.dart';
import 'package:library_architecture_mvvm_modify_todo/utility/utility.dart';

class AppView
    extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LAMM Todo",
      theme: FlutterTheme.light,
      darkTheme: FlutterTheme.dark,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routes: {
        "/" : (context) => MainView(),
        "/$constAddNoteView" : (context) => AddNoteView(),
      });
  }
}