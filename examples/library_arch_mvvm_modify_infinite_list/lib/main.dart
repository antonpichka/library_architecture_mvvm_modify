import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedViewOrNamedWidgetForNamedView/MainView.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App
    extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'LibraryArchMVVMModifyInfiniteList',
        theme: ThemeData(primaryColor: Colors.blue),
        initialRoute: "/",
        routes: {
          "/" : (context) => MainView()
        });
  }
}
