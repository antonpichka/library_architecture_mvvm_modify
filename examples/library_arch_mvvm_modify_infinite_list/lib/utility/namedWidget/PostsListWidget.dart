import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/modelQNamedServiceListViewModelForNamedWidget/PostQJsonPlaceholderServiceAndBoolQNoServiceListViewModelForPostsListWidget.dart';

class PostsListWidget
    extends StatefulWidget
{
  final PostQJsonPlaceholderServiceAndBoolQNoServiceListViewModelForPostsListWidget postQJsonPlaceholderServiceAndBoolQNoServiceListViewModelForPostsListWidget;

  PostsListWidget(this.postQJsonPlaceholderServiceAndBoolQNoServiceListViewModelForPostsListWidget);

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
    return StreamBuilder<ListPost>(
        stream: widget
            .postQJsonPlaceholderServiceAndBoolQNoServiceListViewModelForPostsListWidget
            .getStreamListPostUsingGetListParameterIntForStartIndex,
        builder: (BuildContext buildContext, AsyncSnapshot<ListPost> asyncSnapshot)
        {
          if(asyncSnapshot.data == null) {
            return Center(child: CircularProgressIndicator());
          }
          ListPost listPost = asyncSnapshot.data;
          switch(listPost.getEnumStatusListPostForPostsListWidget) {
            case EnumStatusListPostForPostsListWidget.success:
              return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    if(listPost.isFromIndexMoreOrEqualParameterLengthByList(index)) {
                      return Center(
                        child: SizedBox(
                          height: 24,
                          width: 24,
                          child: CircularProgressIndicator(strokeWidth: 1.5),),
                      );
                    }
                    TextTheme textTheme = Theme.of(context).textTheme;
                    Post itemPost = listPost.list[index];
                    return Material(
                      child: ListTile(
                        leading: Text('${itemPost.uniqueId}', style: textTheme.caption),
                        title: Text(itemPost.title),
                        isThreeLine: true,
                        subtitle: Text(itemPost.body),
                        dense: true,
                      ),
                    );
                  },
                  itemCount: listPost.getParameterLengthByList,
                  controller: _scrollController);
            case EnumStatusListPostForPostsListWidget.isEmptyListPostJsonPlaceholder:
              return Center(child: Text('no posts'));
            case EnumStatusListPostForPostsListWidget.noInternetItLocalException:
              return Center(child: Text('no Internet. Connect to the Internet'));
            case EnumStatusListPostForPostsListWidget.serverNotWorkItNetworkException:
              return Center(child: Text('failed to fetch posts'));
            default:
              return Container();
          }
        });
  }

  void _onScroll() {
    if (_isBottom)
      widget
          .postQJsonPlaceholderServiceAndBoolQNoServiceListViewModelForPostsListWidget
          .getListPostFromJsonPlaceholderServiceParameterIntAndInGeneralOneTask();
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}