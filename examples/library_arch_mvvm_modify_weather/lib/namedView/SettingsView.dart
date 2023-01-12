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
    with WidgetsBindingObserver
{
  final _lo = SettingsViewListViewModel();

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
    _lo.setSettingsAndInGeneralZeroTask(settings);
  }

  Future<bool> _onWillPop() async {
    Navigator.of(context).pop(_lo.getSettings);
    return true;
  }
}