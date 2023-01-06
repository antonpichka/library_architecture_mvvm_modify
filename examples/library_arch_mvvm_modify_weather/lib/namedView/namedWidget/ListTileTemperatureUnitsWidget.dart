import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/ListTileTemperatureUnitsWidgetListViewModel.dart';

class ListTileTemperatureUnitsWidget
    extends StatelessWidget
{
  @protected
  final ListTileTemperatureUnitsWidgetListViewModel lo;

  const ListTileTemperatureUnitsWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Settings>(
        stream: ,
        builder: (BuildContext context,AsyncSnapshot<Settings> asyncSnapshot)
        {
          Settings? settings = asyncSnapshot.data;
          return ListTile(
              title: buildTitle(context, settings),
              isThreeLine: isThreeLine(context, settings),
              subtitle: buildSubTitle(context, settings),
              trailing: buildTrailing(context, settings));
        });
  }

  @protected
  Widget buildTitle(BuildContext buildContext, Settings? settings) {
    return const Text('Temperature Units');
  }

  @protected
  Widget buildSubTitle(BuildContext buildContext, Settings? settings) {
    return const Text('Use metric measurements for temperature units.',);
  }

  @protected
  Widget buildTrailing(BuildContext buildContext, Settings? settings) {
    return Switch(
      value: settings?.isOneParametersNamedForListTileTemperatureUnitsWidget() ?? true,
      onChanged: (_) => context.read<WeatherCubit>().toggleUnits(),
    );
  }

  @protected
  bool isThreeLine(BuildContext buildContext, Settings? settings) {
    return true;
  }
}