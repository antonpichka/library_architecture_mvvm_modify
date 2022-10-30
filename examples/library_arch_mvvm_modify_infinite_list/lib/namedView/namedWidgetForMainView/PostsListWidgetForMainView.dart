import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/listOfViewModelForNamedView/listOfViewModelForNamedWidgetForMainView/ListOfViewModelForPostsListWidgetForMainView.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteList/PostForInfiniteList.dart';
import 'package:library_architecture_mvvm_modify/base_view_or_widget_for_view/base_view_or_widget_for_view.dart';
import '../../model/post/Post.dart';

enum EnumPostsListWidgetForMainViewForModel {
  PostForInfiniteList,
}

class PostsListWidgetForMainView
    extends StatefulWidget
{
  @override
  State<PostsListWidgetForMainView> createState() => _PostsListWidgetForMainViewState();
}

class _PostsListWidgetForMainViewState
    extends BaseViewOrWidgetForView<PostsListWidgetForMainView>
{
  final ListOfViewModelForPostsListWidgetForMainView _lo =
  ListOfViewModelForPostsListWidgetForMainView();
  final ScrollController _scrollController =
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
    _lo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _lo.getListPostFromJsonPlaceholderDatabaseParameterStartIndexAndSetListPostAndInGeneralOneTaskExceptionItInitMethod();
    return StreamBuilder<PostForInfiniteList>(
        stream: _lo.getStreamPostForInfiniteListUsingGetNP,
        builder: (BuildContext buildContext, AsyncSnapshot<PostForInfiniteList> asyncSnapshot)
        {
          if(asyncSnapshot.data == null) {
            return Center(child: CircularProgressIndicator());
          }
          PostForInfiniteList postForInfiniteList = asyncSnapshot.data;
          switch(postForInfiniteList.getEnumPostForInfiniteListItStatus) {
            case EnumPostForInfiniteListItStatus.success:
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  if(postForInfiniteList.isFromIndexMoreOrEqualParameterLengthByListPost(index)) {
                    return Center(
                      child: SizedBox(
                        height: 24,
                        width: 24,
                        child: CircularProgressIndicator(strokeWidth: 1.5),),
                    );
                  }
                  TextTheme textTheme = Theme.of(context).textTheme;
                  Post itemPost = postForInfiniteList.listPost[index];
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
                itemCount: postForInfiniteList.getParameterLengthByListPost,
                controller: _scrollController);
            case EnumPostForInfiniteListItStatus.isEmptyListOfPost:
              return Center(child: Text('no posts'));
            case EnumPostForInfiniteListItStatus.noInternetItLocalException:
              return Center(child: Text('no Internet. Connect to the Internet'));
            case EnumPostForInfiniteListItStatus.serverNotWorkItNetworkException:
              return Center(child: Text('failed to fetch posts'));
            default:
              return Container();
          }
        });
  }

  void _onScroll() {
    if (_isBottom)
      _lo.getListPostFromJsonPlaceholderDatabaseParameterStartIndexAndSetListPostAndInGeneralOneTask();
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}