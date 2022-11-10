import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/listOfViewModelForNamedView/listOfViewModelForNamedWidgetForMainView/ListOfViewModelForIntWithoutLibraryTextWidgetForMainView.dart';
import 'package:library_arch_mvvm_modify_counter/namedView/MainView.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/int_without_library.dart';
import 'package:library_architecture_mvvm_modify/base_view_or_widget_for_view/base_view_or_widget_for_view.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream.dart';
import 'package:library_architecture_mvvm_modify/utility/share_streams_between_views.dart';

enum EnumIntWithoutLibraryTextWidgetForMainView {
  IntWithoutDatabase,
}

class IntWithoutLibraryTextWidgetForMainView
    extends StatefulWidget
{
  @override
  State<IntWithoutLibraryTextWidgetForMainView> createState() => _IntWithoutLibraryTextWidgetForMainViewState();
}

class _IntWithoutLibraryTextWidgetForMainViewState
    extends BaseViewOrWidgetForView<IntWithoutLibraryTextWidgetForMainView>
{
  final ListOfViewModelForIntWithoutLibraryTextWidgetForMainView _lo =
  ListOfViewModelForIntWithoutLibraryTextWidgetForMainView();

  @override
  void initState() {
    super.initState();
    ShareStreamsBetweenViews
        .ssc
        .getIStreamForWidget<DefaultStream<IntWithoutLibrary>>(MainView,IntWithoutLibraryTextWidgetForMainView, EnumIntWithoutLibraryTextWidgetForMainView.IntWithoutDatabase)
        .getStreamModelNamed
        .listen((event) {
          _lo.setIntWithoutLibraryUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(event);
        });
  }

  @override
  void dispose() {
    _lo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<IntWithoutLibrary>(
        stream: _lo.getStreamIntWithoutLibraryUsingGetNPForIncrementAndDecrement,
        builder: (BuildContext buildContext, AsyncSnapshot<IntWithoutLibrary> asyncSnapshot) {
          if(asyncSnapshot.data == null) {
            return Text(
                "0",
              style: Theme.of(context).textTheme.headline4);
          }
          IntWithoutLibrary int = asyncSnapshot.data;
          return Text(
            "${int.field}",
            style: Theme.of(context).textTheme.headline4,
          );
        });
  }
}