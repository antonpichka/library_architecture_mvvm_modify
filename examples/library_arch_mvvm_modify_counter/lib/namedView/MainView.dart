import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/namedView/namedWidget/DecrementFABWidget.dart';
import 'package:library_arch_mvvm_modify_counter/namedView/namedWidget/IncrementFABWidget.dart';
import 'package:library_arch_mvvm_modify_counter/namedView/namedWidget/IntTextWidget.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewListViewModel/MainViewListViewModel.dart';

class MainView
    extends StatefulWidget
{
  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState
    extends State<MainView>
    with WidgetsBindingObserver
{
  final _lo = MainViewListViewModel();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    _lo.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LibraryArchMVVMModifyCounter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:',),
            IntTextWidget(_lo.intTextWidgetListViewModel),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          IncrementFABWidget(_lo.incrementFABWidgetListViewModel),
          const SizedBox(height: 8,),
          DecrementFABWidget(_lo.decrementFABWidgetListViewModel),
        ],
      ),
    );
  }
}