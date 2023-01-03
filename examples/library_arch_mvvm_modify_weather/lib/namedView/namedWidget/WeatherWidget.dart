import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/WeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/WeatherWidgetListViewModel.dart';

class WeatherWidget
    extends StatefulWidget
{
  final WeatherWidgetListViewModel lo;

  const WeatherWidget(this.lo);

  @override
  State<WeatherWidget> createState() => WeatherWidgetState();
}

class WeatherWidgetState
    extends State<WeatherWidget>
    with WidgetsBindingObserver
{
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.lo.getWeatherAndSettingsFromHiveServiceNPAndSetWeatherAndSettingsAndInGeneralOneTask();
    return StreamBuilder<WeatherIsLoading>(
        stream: widget.lo.getStreamWeatherIsLoadingUsingGetNP,
        builder: (BuildContext context,AsyncSnapshot<WeatherIsLoading> asyncSnapshot)
        {
          if(asyncSnapshot.data == null) {
            return buildIsLoading(context);
          }
          WeatherIsLoading? weatherIsLoading = asyncSnapshot.data;
          switch(weatherIsLoading?.getEnumWeatherIsLoadingForWeatherWidget) {
            case EnumWeatherIsLoadingForWeatherWidget.isLoading:
              return buildIsLoading(context);
            case EnumWeatherIsLoadingForWeatherWidget.exception:
              return buildException(context,weatherIsLoading);
            case EnumWeatherIsLoadingForWeatherWidget.isEmpty:
              return buildIsEmpty(context,weatherIsLoading);
            case EnumWeatherIsLoadingForWeatherWidget.success:
              return buildSuccess(context,weatherIsLoading);
            default:
              return Container();
          }
        });
  }

  @protected
  Widget buildIsLoading(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('⛅', style: TextStyle(fontSize: 64)),
        Text(
          'Loading Weather',
          style: theme.textTheme.headline5,
        ),
        const Padding(
          padding: EdgeInsets.all(16),
          child: CircularProgressIndicator(),
        ),
      ],
    );
  }

  @protected
  Widget buildException(BuildContext context,WeatherIsLoading? weatherIsLoading) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('🙈', style: TextStyle(fontSize: 64)),
        Text(
          'Something went wrong!',
          style: theme.textTheme.headline5,
        ),
      ],
    );
  }

  @protected
  Widget buildIsEmpty(BuildContext context,WeatherIsLoading? weatherIsLoading) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('🏙️', style: TextStyle(fontSize: 64)),
        Text(
          'Please Select a City!',
          style: theme.textTheme.headline5,
        ),
      ],
    );
  }

  @protected
  Widget buildSuccess(BuildContext context,WeatherIsLoading? weatherIsLoading) {
    return Stack(
      children: [
        buildWeatherBackgroundForSuccess(context,weatherIsLoading),
        buildDataForSuccess(context,weatherIsLoading)
      ],
    );
  }

  @protected
  Widget buildWeatherBackgroundForSuccess(BuildContext context,WeatherIsLoading? weatherIsLoading) {
    final color = Theme.of(context).primaryColor;
    return SizedBox.expand(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.25, 0.75, 0.90, 1.0],
            colors: [
              color,
              color.brighten(),
              color.brighten(33),
              color.brighten(50),
            ],
          ),
        ),
      ),
    );
  }

  @protected
  Widget buildDataForSuccess(BuildContext context,WeatherIsLoading? weatherIsLoading) {
    return RefreshIndicator(
      onRefresh: () async {
        return;
      },
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        clipBehavior: Clip.none,
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 48),
              buildIconTextForDataForSuccess(context, weatherIsLoading),
              buildOneTextForDataForSuccess(context,weatherIsLoading),
              buildTwoTextForDataForSuccess(context,weatherIsLoading),
              buildThreeTextForDataForSuccess(context,weatherIsLoading),
            ],
          ),
        ),
      ),
    );
  }

  @protected
  Widget buildIconTextForDataForSuccess(BuildContext context,WeatherIsLoading? weatherIsLoading) {
    return Text(
      weatherIsLoading?.getTwoParametersNamedForWeatherWidget ?? "",
      style: const TextStyle(fontSize: 75.0),
    );
  }

  @protected
  Widget buildOneTextForDataForSuccess(BuildContext context,WeatherIsLoading? weatherIsLoading) {
    final theme = Theme.of(context);
    return Text(
      weatherIsLoading?.getThreeParametersNamedForWeatherWidget ?? "",
      style: theme.textTheme.headline2?.copyWith(
        fontWeight: FontWeight.w200,
      ),
    );
  }

  @protected
  Widget buildTwoTextForDataForSuccess(BuildContext context,WeatherIsLoading? weatherIsLoading) {
    final theme = Theme.of(context);
    return Text(
      weatherIsLoading?.getOneParametersNamedForWeatherWidget ?? "",
      style: theme.textTheme.headline3?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @protected
  Widget buildThreeTextForDataForSuccess(BuildContext context,WeatherIsLoading? weatherIsLoading) {
    return Text(weatherIsLoading?.getFourParametersNamedForWeatherWidget(context) ?? "");
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