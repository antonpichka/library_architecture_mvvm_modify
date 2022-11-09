import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_counter/namedView/MainView.dart';
import 'package:library_arch_mvvm_modify_counter/namedView/namedWidgetForMainView/IntWithoutDatabaseTextWidgetForMainView.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/int_without_database.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/list_int_without_database.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_controller.dart';
import 'package:library_architecture_mvvm_modify/utility/sc_model.dart';
import 'package:library_architecture_mvvm_modify/utility/shared_stream_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedStreamController.ssc.setParameterMapForWidgetAndView(
      mapModelForWidget: {
        MainView : {
          IntWithoutDatabaseTextWidgetForMainView : {
            EnumIntWithoutDatabaseTextWidgetForMainViewForModel.IntWithoutDatabase : SCModel(DefaultStreamController<IntWithoutDatabase>(),IntWithoutDatabase.getIntWithoutDatabase,ListIntWithoutDatabase([]))
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
