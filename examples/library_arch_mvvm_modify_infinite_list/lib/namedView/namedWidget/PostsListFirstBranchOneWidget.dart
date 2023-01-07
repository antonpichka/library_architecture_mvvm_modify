import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedView/namedWidget/PostsListWidget.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedViewListViewModel/namedWidgetListViewModel/PostsListFirstBranchOneWidgetListViewModel.dart';

class PostsListFirstBranchOneWidget
    extends PostsListWidget
{
  const PostsListFirstBranchOneWidget(PostsListFirstBranchOneWidgetListViewModel lo) : super(lo);

  @override
  State<PostsListWidget> createState() => PostsListFirstBranchOneWidgetState();
}

class PostsListFirstBranchOneWidgetState
    extends PostsListWidgetState
{
  @override
  Widget build(BuildContext context) {
    final lo = widget.lo as PostsListFirstBranchOneWidgetListViewModel;
    lo.getListPostFromHttpClientServiceParameterIntAndInGeneralOneTaskException();
    return super.build(context);
  }

  @protected
  @override
  Widget buildNoInternetItLocalException(ListPost<Post>? listPost) {
    return const Center(child: Text('no Internet. Connect to the Internet EXT EXT'));
  }
}