import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/namedWidget/IconButtonSearchWidget.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/namedWidget/TextFieldSearchWidget.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/SearchWeatherViewListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view/base_named_view.dart';

class SearchWeatherView
    extends StatefulWidget
{
  @override
  State<SearchWeatherView> createState() => _SearchWeatherViewState();
}

class _SearchWeatherViewState
    extends BaseNamedView<SearchWeatherView,SearchWeatherViewListViewModel>
{
  _SearchWeatherViewState() : super(SearchWeatherViewListViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('City Search')),
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: TextFieldSearchWidget(lo.textFieldSearchWidgetListViewModel),
            ),
          ),
          IconButtonSearchWidget(lo.iconButtonSearchWidgetListViewModel),
        ],
      ),
    );
  }
}