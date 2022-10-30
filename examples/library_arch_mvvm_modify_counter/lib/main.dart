import 'dart:async';
import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/namedView/MainView.dart';
import 'package:library_arch_mvvm_modify_counter/namedView/namedWidgetForMainView/IntTextWidgetForMainView.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/utility/sc_model.dart';
import 'package:library_architecture_mvvm_modify/utility/shared_stream_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedStreamController.setMapForWidgetAndView(
      mapModelForWidget: {
        MainView : {
          IntTextWidgetForMainView : {
            EnumIntTextWidgetForMainViewForModel.Int : SCModel(StreamController<Int>.broadcast(),Int(0))
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
