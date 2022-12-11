import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedView/namedWidget/PostsListExtWidget.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedViewListViewModel/MainViewListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
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
        appBar: AppBar(
          title: Text("LibraryArchMVVMModifyInfiniteList"),
        ),
        body: PostsListExtWidget<Post,ListPost,Bool,ListBool>(lo.postsListExtWidgetListViewModel));
  }
}