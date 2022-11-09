import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/listOfViewModelForNamedView/ListOfViewModelForMainView.dart';
import 'package:library_architecture_mvvm_modify/base_view_or_widget_for_view/base_view_or_widget_for_view.dart';

class MainView
    extends StatefulWidget
{
  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState
    extends BaseViewOrWidgetForView<MainView>
{
  final ListOfViewModelForMainView _lo =
  ListOfViewModelForMainView();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _lo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("LibraryArchMVVMModifyFirebaseLogin"),
        ),
        body: PostsListWidgetForMainView());
  }
}