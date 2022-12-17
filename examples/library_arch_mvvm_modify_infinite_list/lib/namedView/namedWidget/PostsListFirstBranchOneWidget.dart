import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedView/namedWidget/PostsListWidget.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedViewListViewModel/namedWidgetListViewModel/PostsListFirstBranchOneWidgetListViewModel.dart';

class PostsListFirstBranchOneWidget
    extends StatelessWidget
{
  final PostsListFirstBranchOneWidgetListViewModel _lo;

  const PostsListFirstBranchOneWidget(this._lo);

  @override
  Widget build(BuildContext context) {
    _lo.getListPostFromHttpClientServiceParameterIntAndSetListPostAndInGeneralOneTask();
    return PostsListWidget(_lo);
  }
}