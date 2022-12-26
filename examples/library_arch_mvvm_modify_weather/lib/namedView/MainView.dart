import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/WeatherIsLoading.dart';
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
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
             /* Navigator.of(context).push<void>(
                SettingsPage.route(context.read<WeatherCubit>(),),
              );*/
            },
          ),
        ],
      ),
      body: Center(
        child: StreamBuilder<WeatherIsLoading>(
          stream: /* */,
          builder: (BuildContext context,AsyncSnapshot<WeatherIsLoading> asyncSnapshot) {
            if(asyncSnapshot.data == null) {
              return const Scaffold(body: Center(child: CircularProgressIndicator()));
            }
            WeatherIsLoading? weatherIsLoading = asyncSnapshot.data;
            switch(weatherIsLoading?.getEnumWeatherIsLoadingForMainView) {
              case EnumWeatherIsLoadingForMainView.isLoading:
                // TODO: Handle this case.
                break;
              case EnumWeatherIsLoadingForMainView.exception:
                // TODO: Handle this case.
                break;
              case EnumWeatherIsLoadingForMainView.isEmpty:
                // TODO: Handle this case.
                break;
              case EnumWeatherIsLoadingForMainView.success:
                // TODO: Handle this case.
                break;
              default:
                return Container();
            }
          }),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search, semanticLabel: 'Search'),
        onPressed: () async {
       /*   final city = await Navigator.of(context).push(SearchPage.route());
          if (!mounted) return;
          await context.read<WeatherCubit>().fetchWeather(city);*/
        },
      ),
    );
  }

}