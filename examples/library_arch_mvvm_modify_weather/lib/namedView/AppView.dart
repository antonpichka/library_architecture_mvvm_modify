import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/MainView.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/SearchWeatherView.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/SettingsView.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/AppViewListViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/utility/Utility.dart';

class AppView
    extends StatefulWidget
{
  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState
    extends State<AppView>
    with WidgetsBindingObserver
{
  final _lo = AppViewListViewModel();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _lo.getCustomValueListenableBoxSettings!,
        builder: (BuildContext buildContext, Box<dynamic> box,_)
        {
          Settings? settings = box.get(
              Settings.constKeySettingsQHiveService,
              defaultValue: Settings.getSettingsForSuccessWhereKeyNotFound);
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'LibraryArchMVVMModifyWeather',
              theme: ThemeData(
                primaryColor: settings?.getOneParametersNamedForAppView,
                textTheme: GoogleFonts.rajdhaniTextTheme(),
                appBarTheme: AppBarTheme(
                  titleTextStyle: GoogleFonts.rajdhaniTextTheme(Theme.of(context).textTheme)
                      .apply(bodyColor: Colors.white)
                      .headline6,
                ),
              ),
              initialRoute: "/",
              routes: {
                "/" : (context) => MainView(),
                "/$constSettingsView" : (context) => SettingsView(),
                "/$constSearchWeatherView" : (context) => SearchWeatherView(),
              });
        });
  }
}