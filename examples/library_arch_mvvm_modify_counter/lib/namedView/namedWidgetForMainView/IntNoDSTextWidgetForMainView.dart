import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/listOfViewModelForNamedView/listOfViewModelForNamedWidgetForMainView/ListOfViewModelForIntNoDSTextWidgetForMainView.dart';
import 'package:library_arch_mvvm_modify_counter/namedView/MainView.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/int_no_ds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/list_int_no_ds.dart';
import 'package:library_architecture_mvvm_modify/base_view_or_widget_for_view/base_view_or_widget_for_view.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream.dart';
import 'package:library_architecture_mvvm_modify/utility/share_streams_between_views.dart';

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
    extends BaseViewOrWidgetForView<IntNoDSTextWidgetForMainView>
{
  final ListOfViewModelForIntNoDSTextWidgetForMainView _lo =
  ListOfViewModelForIntNoDSTextWidgetForMainView();

  @override
  void initState() {
    super.initState();
    ShareStreamsBetweenViews
        .ssc
        .getIStreamForWidget<DefaultStream<IntNoDS,ListIntNoDS>>(MainView,IntNoDSTextWidgetForMainView, EnumIntNoDSTextWidgetForMainView.IntNoDS)
        .getStreamModelNamed
        .listen((event) {
          _lo.setIntNoDSUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(event);
        });
  }

  @override
  void dispose() {
    _lo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<IntNoDS>(
        stream: _lo.getStreamIntNoDSUsingGetNPForIncrementAndDecrement,
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