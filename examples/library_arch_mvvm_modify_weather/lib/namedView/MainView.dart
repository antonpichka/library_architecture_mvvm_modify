import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/WeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/namedWidget/FloatingActionButtonSearchWidget.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/namedWidget/IconButtonSettingsWidget.dart';
import 'package:library_arch_mvvm_modify_weather/namedView/namedWidget/WeatherBackgroundWidget.dart';
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
        child: StreamBuilder<WeatherIsLoading>(
          stream: /* */,
          builder: (BuildContext context,AsyncSnapshot<WeatherIsLoading> asyncSnapshot) {
            if(asyncSnapshot.data == null) {
              return _buildIsLoading(context);
            }
            WeatherIsLoading? weatherIsLoading = asyncSnapshot.data;
            switch(weatherIsLoading?.getEnumWeatherIsLoadingForMainView) {
              case EnumWeatherIsLoadingForMainView.isLoading:
                return _buildIsLoading(context);
              case EnumWeatherIsLoadingForMainView.exception:
                return _buildException(context);
              case EnumWeatherIsLoadingForMainView.isEmpty:
                return _buildIsEmpty(context);
              case EnumWeatherIsLoadingForMainView.success:
                return _buildSuccess(context);
              default:
                return Container();
            }
          }),
      ),
      floatingActionButton: FloatingActionButtonSearchWidget(lo.floatingActionButtonSearchWidgetListViewModel)
    );
  }

  Widget _buildIsLoading(BuildContext context) {
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

  Widget _buildException(BuildContext context) {
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

  Widget _buildIsEmpty(BuildContext context) {
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

  Widget _buildSuccess(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        WeatherBackgroundWidget(lo.weatherBackgroundWidgetListViewModel),
        RefreshIndicator(
          onRefresh: onRefresh,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            clipBehavior: Clip.none,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 48),
                  _WeatherIcon(condition: weather.condition),
                  Text(
                    weather.location,
                    style: theme.textTheme.headline2?.copyWith(
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Text(
                    weather.formattedTemperature(units),
                    style: theme.textTheme.headline3?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '''Last Updated at ${TimeOfDay.fromDateTime(weather.lastUpdated).format(context)}''',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

}