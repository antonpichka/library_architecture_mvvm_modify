import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewOrNamedWidgetForNamedView/IntTextWidgetForMainView.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewOrNamedWidgetForNamedViewListViewModel/MainViewListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_or_named_widget_for_named_view/base_named_view_or_named_widget_for_named_view.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/utility/manager_for_distributing_streams_between_views.dart';

class MainView
    extends StatefulWidget
{
  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState
    extends BaseNamedViewOrNamedWidgetForNamedView<MainView,MainViewListViewModel>
{
  _MainViewState() : super(MainViewListViewModel());

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    ManagerForDistributingStreamsBetweenViews
        .ssc
        .dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LibraryArchMVVMModifyCounter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:',),
            IntTextWidgetForMainView(),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => lo.incrementFieldByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(
                functionForSuccess: (Int int) {
                  ManagerForDistributingStreamsBetweenViews
                      .ssc
                      .getIStreamModelForWidget(MainView, IntTextWidgetForMainView, EnumIntTextWidgetForMainView.int)
                      .setModel = int;
                  ManagerForDistributingStreamsBetweenViews
                      .ssc
                      .getIStreamModelForWidget(MainView, IntTextWidgetForMainView, EnumIntTextWidgetForMainView.int)
                      .notifyStreamModel(this);
                }),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => lo.decrementFieldByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(
                functionForSuccess: (Int int) {
                  ManagerForDistributingStreamsBetweenViews
                      .ssc
                      .getIStreamModelForWidget(MainView, IntTextWidgetForMainView, EnumIntTextWidgetForMainView.int)
                      .setModel = int;
                  ManagerForDistributingStreamsBetweenViews
                      .ssc
                      .getIStreamModelForWidget(MainView, IntTextWidgetForMainView, EnumIntTextWidgetForMainView.int)
                      .notifyStreamModel(this);
                }),
          ),
        ],
      ),
    );
  }
}