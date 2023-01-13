import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/IconButtonSettingsWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/utility/Utility.dart';

class IconButtonSettingsWidget
    extends StatelessWidget
{
  @protected
  final IconButtonSettingsWidgetListViewModel lo;

  const IconButtonSettingsWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: buildIcon(context),
        onPressed: () => callbackOnPressed(context));
  }

  @protected
  Widget buildIcon(BuildContext context) {
    return const Icon(Icons.settings);
  }

  @protected
  void callbackOnPressed(BuildContext context) {
    Navigator.of(context).pushNamed(
        "/$constSettingsView",
        arguments: {
          constArgumentSettingsView : lo.getWeatherSettings?.settings
        });
    return;
  }
}