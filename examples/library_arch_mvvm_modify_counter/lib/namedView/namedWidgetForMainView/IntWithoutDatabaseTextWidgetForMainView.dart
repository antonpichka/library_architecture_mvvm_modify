import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/listOfViewModelForNamedView/listOfViewModelForNamedWidgetForMainView/ListOfViewModelForIntWithoutDatabaseTextWidgetForMainView.dart';
import 'package:library_arch_mvvm_modify_counter/namedView/MainView.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/int_without_database.dart';
import 'package:library_architecture_mvvm_modify/base_view_or_widget_for_view/base_view_or_widget_for_view.dart';
import 'package:library_architecture_mvvm_modify/utility/shared_stream_controller.dart';

enum EnumIntWithoutDatabaseTextWidgetForMainViewForModel {
  IntWithoutDatabase,
}

class IntWithoutDatabaseTextWidgetForMainView
    extends StatefulWidget
{
  @override
  State<IntWithoutDatabaseTextWidgetForMainView> createState() => _IntWithoutDatabaseTextWidgetForMainViewState();
}

class _IntWithoutDatabaseTextWidgetForMainViewState
    extends BaseViewOrWidgetForView<IntWithoutDatabaseTextWidgetForMainView>
{
  final ListOfViewModelForIntWithoutDatabaseTextWidgetForMainView _lo =
  ListOfViewModelForIntWithoutDatabaseTextWidgetForMainView();

  @override
  void initState() {
    super.initState();
    SharedStreamController
        .ssc
        .getStreamModelNamedDatabaseForWidget(this,MainView,IntWithoutDatabaseTextWidgetForMainView, EnumIntWithoutDatabaseTextWidgetForMainViewForModel.IntWithoutDatabase,)
        .listen((event) {
          _lo.setIntWithoutDatabaseUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(event);
        });
  }

  @override
  void dispose() {
    _lo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<IntWithoutDatabase>(
        stream: _lo.getStreamIntWithoutDatabaseUsingGetNPForIncrementAndDecrement,
        builder: (BuildContext buildContext, AsyncSnapshot<IntWithoutDatabase> asyncSnapshot) {
          if(asyncSnapshot.data == null) {
            return Text(
                "0",
              style: Theme.of(context).textTheme.headline4);
          }
          IntWithoutDatabase int = asyncSnapshot.data;
          return Text(
            "${int.field}",
            style: Theme.of(context).textTheme.headline4,
          );
        });
  }
}