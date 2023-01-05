import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/FloatingActionButtonSearchWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/utility/Utility.dart';

class FloatingActionButtonSearchWidget
    extends StatefulWidget
{
  final FloatingActionButtonSearchWidgetListViewModel lo;

  const FloatingActionButtonSearchWidget(this.lo);

  @override
  State<FloatingActionButtonSearchWidget> createState() => FloatingActionButtonSearchWidgetState();
}

class FloatingActionButtonSearchWidgetState
    extends State<FloatingActionButtonSearchWidget>
{
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: buildChild(context),
      onPressed: () => callbackOnPressed(context));
  }

  @protected
  Widget buildChild(BuildContext context) {
    return const Icon(Icons.search, semanticLabel: 'Search');
  }

  @protected
  Future<void> callbackOnPressed(BuildContext context)
  async {
    final city = await Navigator.of(context).pushNamed("/$constSearchWeatherView");
    if (!mounted) return;
    await widget
        .lo
        .getWeatherAndSettingsFromHttpClientAndHiveServiceParameterStringForLocationFromOpenMeteoApiAndSetWeatherAndSettingsAndInGeneralOneTask(city as String);
    return;
  }
}