import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedView/namedWidget/PostsListFirstBranchOneWidget.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedViewListViewModel/MainViewListViewModel.dart';

class MainView
    extends StatefulWidget
{
  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState
    extends State<MainView>
    with WidgetsBindingObserver
{
  final _lo = MainViewListViewModel();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    _lo.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("LibraryArchMVVMModifyInfiniteList"),
        ),
        body: PostsListFirstBranchOneWidget(_lo.postsListFirstBranchOneWidgetListViewModel));
  }
}