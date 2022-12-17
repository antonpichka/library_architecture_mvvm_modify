import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_github_search/namedView/namedWidget/SearchBarWidget.dart';
import 'package:library_arch_mvvm_modify_github_search/namedView/namedWidget/SearchBodyWidget.dart';
import 'package:library_arch_mvvm_modify_github_search/namedViewListViewModel/MainViewListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view/base_named_view.dart';

class MainView
    extends StatefulWidget
{
  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState
    extends BaseNamedView<MainView,MainViewListViewModel> 
{
  _MainViewState() : super(MainViewListViewModel());

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
        appBar: AppBar(title: const Text('LibraryArchMVVMModifyGithubSearch')),
        body: Column(
          children: <Widget>[
            SearchBarWidget(lo.searchBarWidgetListViewModel),
            SearchBodyWidget(lo.searchBodyWidgetListViewModel),
          ],
        )
    );
  }
}