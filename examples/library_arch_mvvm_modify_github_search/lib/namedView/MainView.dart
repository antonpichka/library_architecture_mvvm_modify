import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_github_search/namedView/namedWidget/SearchBarWidget.dart';
import 'package:library_arch_mvvm_modify_github_search/namedView/namedWidget/SearchBodyWidget.dart';
import 'package:library_arch_mvvm_modify_github_search/namedViewListViewModel/MainViewListViewModel.dart';

final class MainView extends StatefulWidget {
  @override
  State<MainView> createState() => _MainViewState();
}

final class _MainViewState extends State<MainView> {
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
        appBar: AppBar(title: const Text('LibraryArchMVVMModifyGithubSearch')),
        body: Column(
          children: <Widget>[
            SearchBarWidget(_lo.searchBarWidgetListViewModel),
            SearchBodyWidget(_lo.searchBodyWidgetListViewModel),
          ],
        ));
  }
}
