import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedViewListViewModel/namedWidgetListViewModel/PostsListWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';

class PostsListWidget<Q extends Post,W extends ListPost,E extends Bool,R extends ListBool>
    extends StatefulWidget
{
  final PostsListWidgetListViewModel<Q,W,E,R> _lo;

  PostsListWidget(this._lo);

  @override
  State<PostsListWidget> createState() => _PostsListWidget<Q,W,E,R>(_lo);
}

class _PostsListWidget<Q extends Post,W extends ListPost,E extends Bool,R extends ListBool>
    extends State<PostsListWidget>
    with WidgetsBindingObserver
{
  final PostsListWidgetListViewModel<Q,W,E,R> _lo;

  _PostsListWidget(this._lo);

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
    return StreamBuilder<W>(
        stream: _lo.getStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder,
        builder: (BuildContext buildContext, AsyncSnapshot<W> asyncSnapshot)
        {
          if(asyncSnapshot.data == null) {
            return Center(child: CircularProgressIndicator());
          }
          W? listPost = asyncSnapshot.data;
          switch(listPost?.getEnumListPostForPostsListWidget) {
            case EnumListPostForPostsListWidget.success:
              return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    if(listPost!.isOneParametersNamedForPostsListWidget(index)) {
                      return Center(
                        child: SizedBox(
                          height: 24,
                          width: 24,
                          child: CircularProgressIndicator(strokeWidth: 1.5),),
                      );
                    }
                    TextTheme textTheme = Theme.of(context).textTheme;
                    Q? itemPost = listPost.getParameterList![index] as Q?;
                    return Material(
                      child: ListTile(
                        leading: Text('${itemPost!.getOneParametersNamedForPostsListWidget}', style: textTheme.caption),
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
              return Center(child: Text('no posts'));
            case EnumListPostForPostsListWidget.noInternetItLocalException:
              return Center(child: Text('no Internet. Connect to the Internet'));
            case EnumListPostForPostsListWidget.serverNotWorkItNetworkException:
              return Center(child: Text('failed to fetch posts'));
            default:
              return Container();
          }
        });
  }

  void _onScroll() {
    if (_isBottom)
      _lo.getListPostFromHttpClientServiceParameterIntAndInGeneralOneTask();
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}