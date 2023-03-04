import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedView/namedWidget/PostsListFirstBranchOneWidget.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedViewListViewModel/MainViewListViewModel.dart';

class MainView extends StatefulWidget {
  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final _lo = MainViewListViewModel();

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
          title: const Text("LibraryArchMVVMModifyInfiniteList"),
        ),
        body: PostsListFirstBranchOneWidget(
            _lo.postsListFirstBranchOneWidgetListViewModel));
  }
}
