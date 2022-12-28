import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/WeatherBackgroundWidgetListViewModel.dart';

class WeatherBackgroundWidget
    extends StatelessWidget
{
  @protected
  final WeatherBackgroundWidgetListViewModel lo;

  const WeatherBackgroundWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
        child: buildChild(context)
    );
  }

  @protected
  Widget buildChild(BuildContext context) {
    return DecoratedBox(
      decoration: buildBoxDecorationForChild(context),
    );
  }

  @protected
  Decoration buildBoxDecorationForChild(BuildContext context) {
    return BoxDecoration(
      gradient: buildGradientForBoxDecorationForChild(context),
    );
  }

  @protected
  Gradient buildGradientForBoxDecorationForChild(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: const [0.25, 0.75, 0.90, 1.0],
      colors: [
        color,
        color.brighten(),
        color.brighten(33),
        color.brighten(50),
      ],
    );
  }
}

extension on Color {
  Color brighten([int percent = 10]) {
    assert(
    1 <= percent && percent <= 100,
    'percentage must be between 1 and 100',
    );
    final p = percent / 100;
    return Color.fromARGB(
      alpha,
      red + ((255 - red) * p).round(),
      green + ((255 - green) * p).round(),
      blue + ((255 - blue) * p).round(),
    );
  }
}