import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/namedWidget/FloatingActionButtonSearchWidget.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/namedWidget/IconButtonSettingsWidget.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/namedWidget/WeatherWidget.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/MainViewListViewModel.dart';

class MainView
    extends StatefulWidget
{
  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState
    extends State<MainView>
    with WidgetsBindingObserver
{
  final _lo = MainViewListViewModel();

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('LibraryArchMVVMModifyWeather'),
        actions: [
          IconButtonSettingsWidget(_lo.iconButtonSettingsWidgetListViewModel),
        ],
      ),
      body: Center(
        child: WeatherWidget(_lo.weatherWidgetListViewModel),
      ),
      floatingActionButton: FloatingActionButtonSearchWidget(_lo.floatingActionButtonSearchWidgetListViewModel)
    );
  }
}