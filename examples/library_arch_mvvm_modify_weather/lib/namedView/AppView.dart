import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/MainView.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/SearchWeatherView.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/SettingsView.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/AppViewListViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/utility/Utility.dart';

final class AppView extends StatefulWidget {
  @override
  State<AppView> createState() => _AppViewState();
}

final class _AppViewState extends State<AppView> {
  final _lo = AppViewListViewModel();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _lo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _lo.getCustomValueListenableBoxSettings!,
        builder: (BuildContext buildContext, Box<dynamic> box, _) {
          Settings? settings = Settings.fromBoxSettings(box);
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'LibraryArchMVVMModifyWeather',
              theme: ThemeData(
                primaryColor: settings.getColorParameterColor,
                textTheme: GoogleFonts.rajdhaniTextTheme(),
                appBarTheme: AppBarTheme(
                  titleTextStyle:
                      GoogleFonts.rajdhaniTextTheme(Theme.of(context).textTheme)
                          .apply(bodyColor: Colors.white)
                          .titleLarge,
                ),
              ),
              initialRoute: "/",
              routes: {
                "/": (context) => MainView(),
                "/$constSettingsView": (context) => SettingsView(),
                "/$constSearchWeatherView": (context) => SearchWeatherView(),
              });
        });
  }
}
