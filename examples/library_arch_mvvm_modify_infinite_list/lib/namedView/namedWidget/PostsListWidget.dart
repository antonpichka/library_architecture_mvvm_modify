import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedViewListViewModel/namedWidgetListViewModel/PostsListWidgetListViewModel.dart';

class PostsListWidget
    extends StatefulWidget
{
  final PostsListWidgetListViewModel lo;

  const PostsListWidget(this.lo);

  @override
  State<PostsListWidget> createState() => _PostsListWidget();
}

class _PostsListWidget
    extends State<PostsListWidget>
    with WidgetsBindingObserver
{
  final _scrollController =
  ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ListPost<Post>>(
        stream: widget.lo.getStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder,
        builder: (BuildContext buildContext, AsyncSnapshot<ListPost<Post>> asyncSnapshot)
        {
          if(asyncSnapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          }
          ListPost<Post>? listPost = asyncSnapshot.data;
          switch(listPost?.getEnumListPostForPostsListWidget) {
            case EnumListPostForPostsListWidget.success:
              return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    if(listPost!.isOneParametersNamedForPostsListWidget(index)) {
                      return const Center(
                        child: SizedBox(
                          height: 24,
                          width: 24,
                          child: CircularProgressIndicator(strokeWidth: 1.5),),
                      );
                    }
                    TextTheme textTheme = Theme.of(context).textTheme;
                    Post? itemPost = listPost.getParameterList![index];
                    return Material(
                      child: ListTile(
                        leading: Text(itemPost.getOneParametersNamedForPostsListWidget, style: textTheme.caption),
                        title: Text(itemPost.getTwoParametersNamedForPostsListWidget),
                        isThreeLine: true,
                        subtitle: Text(itemPost.getThreeParametersNamedForPostsListWidget),
                        dense: true,
                      ),
                    );
                  },
                  itemCount: listPost?.getTwoParametersNamedForPostsListWidget,
                  controller: _scrollController);
            case EnumListPostForPostsListWidget.isEmptyList:
              return const Center(child: Text('no posts'));
            case EnumListPostForPostsListWidget.noInternetItLocalException:
              return const Center(child: Text('no Internet. Connect to the Internet'));
            case EnumListPostForPostsListWidget.serverNotWorkItNetworkException:
              return const Center(child: Text('failed to fetch posts'));
            default:
              return Container();
          }
        });
  }

  void _onScroll() {
    if (_isBottom) {
      widget.lo.getListPostFromHttpClientServiceParameterIntAndInGeneralOneTask();
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}