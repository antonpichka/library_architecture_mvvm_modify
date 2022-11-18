import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedViewListViewModel/MainViewListViewModel.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/namedWidget/PostsListWidget.dart';
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
    lo.getListPostFromJsonPlaceholderServiceParameterIntAndSetListPostAndInGeneralOneTask();
    return Scaffold(
        appBar: AppBar(
          title: Text("LibraryArchMVVMModifyInfiniteList"),
        ),
        body: PostsListWidget(lo.postQJsonPlaceholderServiceAndBoolQNoServiceListViewModelForPostsListWidget));
  }
}