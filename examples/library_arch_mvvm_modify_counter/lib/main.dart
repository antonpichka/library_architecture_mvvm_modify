import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/namedView/MainView.dart';
import 'package:library_arch_mvvm_modify_counter/namedView/namedWidgetForMainView/IntNoDSTextWidgetForMainView.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/int_no_ds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/list_int_no_ds.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream.dart';
import 'package:library_architecture_mvvm_modify/utility/share_streams_between_views.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ShareStreamsBetweenViews.ssc.setMapForWidgetAndView(
      mapModelForWidget: {
        MainView : {
          IntNoDSTextWidgetForMainView : {
            EnumIntNoDSTextWidgetForMainView.IntNoDS : DefaultStream<IntNoDS,ListIntNoDS>(IntNoDS.getIntNoDS,ListIntNoDS([]))
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
