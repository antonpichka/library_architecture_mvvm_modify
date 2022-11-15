import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewOrNamedWidgetForNamedView/MainView.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewOrNamedWidgetForNamedView/IntTextWidgetForMainView.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/list_int.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/manager_for_distributing_streams_between_views.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ManagerForDistributingStreamsBetweenViews.ssc.initMapForWidgetAndView(
      mapModelNamedForWidget: {
        MainView : {
          IntTextWidgetForMainView : {
            EnumIntTextWidgetForMainView.int : DefaultStreamModel<Int,ListInt>(Int.success(0),ListInt.success([]))
          }
        }
      });
  runApp(App());
}

class App
    extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'LibraryArchMVVMModifyCounter',
        theme: ThemeData(
            primaryColor: Colors.blue),
        initialRoute: "/",
        routes: {
          "/" : (context) => MainView()
        });
  }
}
