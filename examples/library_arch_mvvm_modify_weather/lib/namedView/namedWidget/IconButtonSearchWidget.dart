import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/IconButtonSearchWidgetListViewModel.dart';

class IconButtonSearchWidget
    extends StatelessWidget
{
  @protected
  final IconButtonSearchWidgetListViewModel lo;

  const IconButtonSearchWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: buildIcon(context),
      onPressed: () => callbackOnPressed(context));
  }

  @protected
  Widget buildIcon(BuildContext context) {
    return const Icon(Icons.search, semanticLabel: 'Submit');
  }

  @protected
  void callbackOnPressed(BuildContext context) {
    Navigator.of(context).pop(lo
        .getStringsUsingGetNP
        ?.getParameterField);
    return;
  }
}