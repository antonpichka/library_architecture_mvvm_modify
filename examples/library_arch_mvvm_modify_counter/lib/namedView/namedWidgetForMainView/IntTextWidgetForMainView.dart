import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/listOfViewModelForNamedView/listOfViewModelForNamedWidgetForMainView/ListOfViewModelForIntTextWidgetForMainView.dart';
import 'package:library_arch_mvvm_modify_counter/namedView/MainView.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_view_or_widget_for_view/base_view_or_widget_for_view.dart';
import 'package:library_architecture_mvvm_modify/utility/shared_stream_controller.dart';

enum EnumIntTextWidgetForMainViewForModel {
  Int,
}

class IntTextWidgetForMainView
    extends StatefulWidget
{
  @override
  State<IntTextWidgetForMainView> createState() => _IntTextWidgetForMainViewState();
}

class _IntTextWidgetForMainViewState
    extends BaseViewOrWidgetForView<IntTextWidgetForMainView>
{
  final ListOfViewModelForIntTextWidgetForMainView _lo =
  ListOfViewModelForIntTextWidgetForMainView();

  @override
  void initState() {
    super.initState();
    SharedStreamController
        .getStreamModelForWidget(this,MainView,IntTextWidgetForMainView, EnumIntTextWidgetForMainViewForModel.Int,)
        .listen((event) {
          _lo.setIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(event);
        });
  }

  @override
  void dispose() {
    _lo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Int>(
        stream: _lo.getStreamIntUsingGetNPForIncrementAndDecrement,
        builder: (BuildContext buildContext, AsyncSnapshot<Int> asyncSnapshot) {
          if(asyncSnapshot.data == null) {
            return Text(
                "0",
              style: Theme.of(context).textTheme.headline4);
          }
          Int int = asyncSnapshot.data;
          return Text(
            "${int.field}",
            style: Theme.of(context).textTheme.headline4,
          );
        });
  }
}