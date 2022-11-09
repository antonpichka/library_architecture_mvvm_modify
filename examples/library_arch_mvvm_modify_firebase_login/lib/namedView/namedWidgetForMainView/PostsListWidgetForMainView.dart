import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_infinite_list/listOfViewModelForNamedView/listOfViewModelForNamedWidgetForMainView/ListOfViewModelForPostsListWidgetForMainView.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteList/PostForInfiniteListWithoutDatabase.dart';
import 'package:library_architecture_mvvm_modify/base_view_or_widget_for_view/base_view_or_widget_for_view.dart';
import '../../model/post/Post.dart';

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
    _lo.getListPostFromJsonPlaceholderDatabaseParameterStartIndexAndSetListPostJsonPlaceholderDatabaseAndInGeneralOneTaskExceptionItInitMethod();
    return StreamBuilder<PostForInfiniteList>(
        stream: _lo.getStreamPostForInfiniteListWithoutDatabaseUsingGetNP,
        builder: (BuildContext buildContext, AsyncSnapshot<PostForInfiniteList> asyncSnapshot)
        {
          if(asyncSnapshot.data == null) {
            return Center(child: CircularProgressIndicator());
          }
          PostForInfiniteList postForInfiniteList = asyncSnapshot.data;
          switch(postForInfiniteList.getEnumPostForInfiniteListWithoutDatabaseItStatus) {
            case EnumPostForInfiniteListItStatus.success:
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  if(postForInfiniteList.isFromIndexMoreOrEqualParameterLengthByListPostJsonPlaceholderDatabase(index)) {
                    return Center(
                      child: SizedBox(
                        height: 24,
                        width: 24,
                        child: CircularProgressIndicator(strokeWidth: 1.5),),
                    );
                  }
                  TextTheme textTheme = Theme.of(context).textTheme;
                  Post itemPost = postForInfiniteList.listPostJsonPlaceholderDatabase[index];
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
                itemCount: postForInfiniteList.getParameterLengthByListPostJsonPlaceholderDatabase,
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
      _lo.getListPostFromJsonPlaceholderDatabaseParameterStartIndexAndSetListPostJsonPlaceholderDatabaseAndInGeneralOneTask();
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}