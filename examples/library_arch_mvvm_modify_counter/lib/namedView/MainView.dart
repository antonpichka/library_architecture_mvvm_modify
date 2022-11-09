import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/listOfViewModelForNamedView/ListOfViewModelForMainView.dart';
import 'package:library_arch_mvvm_modify_counter/namedView/namedWidgetForMainView/IntWithoutDatabaseTextWidgetForMainView.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/int_without_database.dart';
import 'package:library_architecture_mvvm_modify/base_view_or_widget_for_view/base_view_or_widget_for_view.dart';
import 'package:library_architecture_mvvm_modify/utility/shared_stream_controller.dart';

class MainView
    extends StatefulWidget
{
  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState
    extends BaseViewOrWidgetForView<MainView>
{
  final ListOfViewModelForMainView _lo =
  ListOfViewModelForMainView();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _lo.dispose();
    SharedStreamController
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
            const Text(
              'You have pushed the button this many times:',
            ),
            IntWithoutDatabaseTextWidgetForMainView(),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => _lo.incrementFieldByIntWithoutDatabaseUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(
                functionForSuccess: (IntWithoutDatabase int) {
                  SharedStreamController
                      .ssc
                      .setModelNamedDatabaseForWidget(this, MainView, IntWithoutDatabaseTextWidgetForMainView, EnumIntWithoutDatabaseTextWidgetForMainViewForModel.IntWithoutDatabase, int);
                  SharedStreamController
                      .ssc
                      .notifyStreamModelNamedDatabaseForWidgetIfHasListener(this, MainView, IntWithoutDatabaseTextWidgetForMainView, EnumIntWithoutDatabaseTextWidgetForMainViewForModel.IntWithoutDatabase);
                }),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => _lo.decrementFieldByIntWithoutDatabaseUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(
                functionForSuccess: (IntWithoutDatabase int) {
                  SharedStreamController
                      .ssc
                      .setModelNamedDatabaseForWidget(this, MainView, IntWithoutDatabaseTextWidgetForMainView, EnumIntWithoutDatabaseTextWidgetForMainViewForModel.IntWithoutDatabase, int);
                  SharedStreamController
                      .ssc
                      .notifyStreamModelNamedDatabaseForWidgetIfHasListener(this, MainView, IntWithoutDatabaseTextWidgetForMainView, EnumIntWithoutDatabaseTextWidgetForMainViewForModel.IntWithoutDatabase);
                }),
          ),
        ],
      ),
    );
  }
}