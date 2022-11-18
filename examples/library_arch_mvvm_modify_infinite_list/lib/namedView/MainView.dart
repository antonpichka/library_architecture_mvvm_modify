import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedViewListViewModel/MainViewListViewModel.dart';
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
  final _scrollController =
  ScrollController();

  _MainViewState() : super(MainViewListViewModel());

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
    lo.getListPostFromJsonPlaceholderServiceParameterIntAndSetListPostAndInGeneralOneTask();
    return Scaffold(
        appBar: AppBar(
          title: Text("LibraryArchMVVMModifyInfiniteList"),
        ),
        body: StreamBuilder<ListPost>(
            stream: lo.getStreamListPostUsingGetListParameterIntForStartIndex,
            builder: (BuildContext buildContext, AsyncSnapshot<ListPost> asyncSnapshot)
            {
              if(asyncSnapshot.data == null) {
                return Center(child: CircularProgressIndicator());
              }
              ListPost listPost = asyncSnapshot.data;
              switch(listPost.getEnumStatusListPostForPostsListWidgetForMainView) {
                case EnumStatusListPostForPostsListWidgetForMainView.success:
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
                case EnumStatusListPostForPostsListWidgetForMainView.isEmptyListPostJsonPlaceholder:
                  return Center(child: Text('no posts'));
                case EnumStatusListPostForPostsListWidgetForMainView.noInternetItLocalException:
                  return Center(child: Text('no Internet. Connect to the Internet'));
                case EnumStatusListPostForPostsListWidgetForMainView.serverNotWorkItNetworkException:
                  return Center(child: Text('failed to fetch posts'));
                default:
                  return Container();
              }
            }));
  }

  void _onScroll() {
    if (_isBottom)
      lo.getListPostFromJsonPlaceholderServiceParameterIntAndInGeneralOneTask();
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}