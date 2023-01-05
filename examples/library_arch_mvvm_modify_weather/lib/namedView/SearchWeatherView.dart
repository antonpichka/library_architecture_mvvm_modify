import 'package:flutter/material.dart';
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
    // TODO: implement build
    throw UnimplementedError();
  }
}