import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/listOfViewModelForNamedView/ListOfViewModelForMainView.dart';
import 'package:library_arch_mvvm_modify_counter/namedView/namedWidgetForMainView/intTextWidgetForMainView.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';
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
    SharedStreamController.dispose();
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
            onPressed: () => _lo.incrementFieldByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(
                functionForSuccess: (Int int) {
                  SharedStreamController.setModelForWidget(this, MainView, IntTextWidgetForMainView, EnumIntTextWidgetForMainViewForModel.Int, int);
                  SharedStreamController.notifyStreamModelForWidgetIfHasListener(this, MainView, IntTextWidgetForMainView, EnumIntTextWidgetForMainViewForModel.Int);
                }),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => _lo.decrementFieldByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(
                functionForSuccess: (Int int) {
                  SharedStreamController.setModelForWidget(this, MainView, IntTextWidgetForMainView, EnumIntTextWidgetForMainViewForModel.Int, int);
                  SharedStreamController.notifyStreamModelForWidgetIfHasListener(this, MainView, IntTextWidgetForMainView, EnumIntTextWidgetForMainViewForModel.Int);
                }),
          ),
        ],
      ),
    );
  }
}