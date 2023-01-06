import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/namedWidget/ListTileTemperatureUnitsWidget.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/SettingsViewListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view/base_named_view.dart';

class SettingsView
    extends StatefulWidget
{
  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState
    extends BaseNamedView<SettingsView,SettingsViewListViewModel>
{
  _SettingsViewState() : super(SettingsViewListViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: <Widget>[
          ListTileTemperatureUnitsWidget(lo.listTileTemperatureUnitsWidgetListViewModel)
        ],
      ),
    );
  }
}