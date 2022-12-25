import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/MainView.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/AppViewListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view/base_named_view.dart';

class AppView
    extends StatefulWidget
{
  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState
    extends BaseNamedView<AppView,AppViewListViewModel>
{
  _AppViewState() : super(AppViewListViewModel());

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ValueListenableBuilder(
        valueListenable: lo.getCustomValueListenableBoxSettings,
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
                  titleTextStyle: GoogleFonts.rajdhaniTextTheme(textTheme)
                      .apply(bodyColor: Colors.white)
                      .headline6,
                ),
              ),
              initialRoute: "/",
              routes: {
                "/" : (context) => MainView(),
              });
        });
  }
}