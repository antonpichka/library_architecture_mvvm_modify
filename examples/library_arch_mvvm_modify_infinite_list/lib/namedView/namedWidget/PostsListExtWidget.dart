import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedView/namedWidget/PostsListWidget.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedViewListViewModel/namedWidgetListViewModel/PostsListExtWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';

class PostsListExtWidget<Q extends Post,W extends ListPost,E extends Bool,R extends ListBool>
    extends StatelessWidget
{
  final PostsListExtWidgetListViewModel<Q,W,E,R> _lo;

  PostsListExtWidget(this._lo);

  @override
  Widget build(BuildContext context) {
    _lo.getListPostFromHttpClientServiceParameterIntAndSetListPostAndInGeneralOneTask();
    return PostsListWidget(_lo);
  }
}