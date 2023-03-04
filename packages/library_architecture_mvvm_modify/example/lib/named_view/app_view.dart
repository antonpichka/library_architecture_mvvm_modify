import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify_todo/l10n/l10n.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view/add_note_view.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view/edit_note_view.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view/main_view.dart';
import 'package:library_architecture_mvvm_modify_todo/utility/flutter_theme.dart';
import 'package:library_architecture_mvvm_modify_todo/utility/utility.dart';

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "LAMM Todo",
        // To test the dark theme in the debug mode,
        // you need to write this line
        // (this is if you test on an android emulator, I did not test it on other emulators)
        themeMode: ThemeMode.dark,
        theme: FlutterTheme.light,
        darkTheme: FlutterTheme.dark,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        initialRoute: "/",
        routes: {
          "/": (context) => MainView(),
          "/$constAddNoteView": (context) => AddNoteView(),
          "/$constEditNoteView": (context) => EditNoteView()
        });
  }
}
