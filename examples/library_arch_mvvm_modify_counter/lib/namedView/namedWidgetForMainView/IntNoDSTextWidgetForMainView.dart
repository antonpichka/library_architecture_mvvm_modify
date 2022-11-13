import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/listOfViewModelForNamedView/listOfViewModelForNamedWidgetForMainView/ListOfViewModelForIntNoDSTextWidgetForMainView.dart';
import 'package:library_arch_mvvm_modify_counter/namedView/MainView.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/int_no_ds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/list_int_no_ds.dart';
import 'package:library_architecture_mvvm_modify/base_view_or_widget_for_view/base_view_or_widget_for_view.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_model_named.dart';
import 'package:library_architecture_mvvm_modify/utility/manager_for_distributing_streams_between_views.dart';

enum EnumIntNoDSTextWidgetForMainView {
  IntNoDS,
}

class IntNoDSTextWidgetForMainView
    extends StatefulWidget
{
  @override
  State<IntNoDSTextWidgetForMainView> createState() => _IntNoDSTextWidgetForMainViewState();
}

class _IntNoDSTextWidgetForMainViewState
    extends BaseViewOrWidgetForView<IntNoDSTextWidgetForMainView,ListOfViewModelForIntNoDSTextWidgetForMainView>
{
  _IntNoDSTextWidgetForMainViewState() : super(ListOfViewModelForIntNoDSTextWidgetForMainView());

  @override
  void initState() {
    super.initState();
    ManagerForDistributingStreamsBetweenViews
        .ssc
        .getIStreamModelNamedForWidget<DefaultStreamModelNamed<IntNoDS,ListIntNoDS>>(MainView,IntNoDSTextWidgetForMainView, EnumIntNoDSTextWidgetForMainView.IntNoDS)
        .getStreamModelNamed
        .listen((event) {
          lo.setIntNoDSUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(event);
        });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<IntNoDS>(
        stream: lo.getStreamIntNoDSUsingGetNPForIncrementAndDecrement,
        builder: (BuildContext buildContext, AsyncSnapshot<IntNoDS> asyncSnapshot) {
          if(asyncSnapshot.data == null) {
            return Text(
                "0",
              style: Theme.of(context).textTheme.headline4);
          }
          IntNoDS int = asyncSnapshot.data;
          return Text(
            "${int.field}",
            style: Theme.of(context).textTheme.headline4,
          );
        });
  }
}