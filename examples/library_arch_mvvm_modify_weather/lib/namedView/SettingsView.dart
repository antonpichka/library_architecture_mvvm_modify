import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/namedWidget/ListTileTemperatureUnitsWidget.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/SettingsViewListViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/utility/Utility.dart';

class SettingsView
    extends StatefulWidget
{
  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState
    extends State<SettingsView>
{
  final _lo = SettingsViewListViewModel();

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
    _init();
    return  WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          appBar: AppBar(title: const Text('Settings')),
          body: ListView(
            children: <Widget>[
              ListTileTemperatureUnitsWidget(_lo.listTileTemperatureUnitsWidgetListViewModel)],
          ),
        ));
  }

  void _init() {
    final arguments = ModalRoute.of(context)?.settings.arguments as Map;
    final settings = arguments[constArgumentSettingsView] as Settings;
    _lo.setSettingsBySettingsAndInGeneralZeroTask(settings);
  }

  Future<bool> _onWillPop() async {
    Navigator.of(context).pop(_lo.getSettings);
    return true;
  }
}