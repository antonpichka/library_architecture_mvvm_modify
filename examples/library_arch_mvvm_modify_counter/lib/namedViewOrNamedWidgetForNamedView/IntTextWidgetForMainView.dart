import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewOrNamedWidgetForNamedView/MainView.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewOrNamedWidgetForNamedViewListViewModel/IntTextWidgetForMainViewListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_or_named_widget_for_named_view/base_named_view_or_named_widget_for_named_view.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/list_int.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/manager_for_distributing_streams_between_views.dart';

enum EnumIntTextWidgetForMainView {
  int,
}

class IntTextWidgetForMainView
    extends StatefulWidget
{
  @override
  State<IntTextWidgetForMainView> createState() => _IntTextWidgetForMainViewState();
}

class _IntTextWidgetForMainViewState
    extends BaseNamedViewOrNamedWidgetForNamedView<IntTextWidgetForMainView,IntTextWidgetForMainViewListViewModel>
{
  _IntTextWidgetForMainViewState() : super(IntTextWidgetForMainViewListViewModel());

  @override
  void initState() {
    super.initState();
    ManagerForDistributingStreamsBetweenViews
        .ssc
        .getIStreamModelForWidget<DefaultStreamModel<Int,ListInt>>(MainView,IntTextWidgetForMainView, EnumIntTextWidgetForMainView.int)
        .getStreamModel
        .listen((event) {
          lo.setIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(event);
        });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Int>(
        stream: lo.getStreamIntUsingGetNPForIncrementAndDecrement,
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