import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/namedWidget/IconButtonSearchWidget.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/namedWidget/TextFieldSearchWidget.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/SearchWeatherViewListViewModel.dart';

class SearchWeatherView
    extends StatefulWidget
{
  @override
  State<SearchWeatherView> createState() => _SearchWeatherViewState();
}

class _SearchWeatherViewState
    extends State<SearchWeatherView>
{
  final _lo = SearchWeatherViewListViewModel();

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
    return Scaffold(
      appBar: AppBar(title: const Text('City Search')),
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: TextFieldSearchWidget(_lo.textFieldSearchWidgetListViewModel),
            ),
          ),
          IconButtonSearchWidget(_lo.iconButtonSearchWidgetListViewModel),
        ],
      ),
    );
  }
}