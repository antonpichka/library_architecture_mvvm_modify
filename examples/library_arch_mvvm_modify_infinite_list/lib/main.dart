import 'dart:async';
import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteList/PostForInfiniteList.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedView/MainView.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedView/namedWidgetForMainView/PostsListWidgetForMainView.dart';
import 'package:library_architecture_mvvm_modify/utility/sc_model.dart';
import 'package:library_architecture_mvvm_modify/utility/shared_stream_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedStreamController.setMapForWidgetAndView(
      mapModelForWidget: {
        MainView : {
          PostsListWidgetForMainView : {
            EnumPostsListWidgetForMainViewForModel.PostForInfiniteList : SCModel(StreamController<PostForInfiniteList>.broadcast(),PostForInfiniteList.getDefaultPostForInfiniteList)
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
        title: 'LibraryArchMVVMModifyInfiniteList',
        theme: ThemeData(
            primaryColor: Colors.blue),
        initialRoute: "/",
        routes: {
          "/" : (context) => MainView()
        });
  }
}
