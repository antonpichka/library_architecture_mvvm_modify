import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/listOfViewModelForNamedView/ListOfViewModelForMainView.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedView/namedWidgetForMainView/PostsListWidgetForMainView.dart';
import 'package:library_architecture_mvvm_modify/base_view_or_widget_for_view/base_view_or_widget_for_view.dart';

class MainView
    extends StatefulWidget
{
  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState
    extends BaseViewOrWidgetForView<MainView,ListOfViewModelForMainView>
{
  _MainViewState() : super(ListOfViewModelForMainView());

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("LibraryArchMVVMModifyInfiniteList"),
        ),
        body: PostsListWidgetForMainView());
  }
}