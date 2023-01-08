import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_github_search/namedView/namedWidget/SearchBarWidget.dart';
import 'package:library_arch_mvvm_modify_github_search/namedView/namedWidget/SearchBodyWidget.dart';
import 'package:library_arch_mvvm_modify_github_search/namedViewListViewModel/MainViewListViewModel.dart';

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
        appBar: AppBar(title: const Text('LibraryArchMVVMModifyGithubSearch')),
        body: Column(
          children: <Widget>[
            SearchBarWidget(_lo.searchBarWidgetListViewModel),
            SearchBodyWidget(_lo.searchBodyWidgetListViewModel),
          ],
        )
    );
  }
}