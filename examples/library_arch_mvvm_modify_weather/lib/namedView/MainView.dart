import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/namedWidget/FloatingActionButtonSearchWidget.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/namedWidget/IconButtonSettingsWidget.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/namedWidget/WeatherWidget.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/MainViewListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view/base_named_view.dart';

class MainView
    extends StatefulWidget
{
  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState
    extends BaseNamedView<MainView,MainViewListViewModel>
{
  _MainViewState() : super(MainViewListViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LibraryArchMVVMModifyWeather'),
        actions: [
          IconButtonSettingsWidget(lo.iconButtonSettingsWidgetListViewModel),
        ],
      ),
      body: Center(
        child: WeatherWidget(lo.weatherWidgetListViewModel),
      ),
      floatingActionButton: FloatingActionButtonSearchWidget(lo.floatingActionButtonSearchWidgetListViewModel)
    );
  }
}